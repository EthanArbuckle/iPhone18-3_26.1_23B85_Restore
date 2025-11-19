uint64_t _INPBValueMetadataReadFrom(void *a1, void *a2)
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
        LOBYTE(v37) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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
            v14 = objc_alloc_init(_INPBConfidenceScore);
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !_INPBConfidenceScoreReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            [a1 setConfidenceScore:v14];
            goto LABEL_60;
          }

          if (v13 == 9999)
          {
            if ((v12 & 7) == 2)
            {
              v37 = 0;
              v38 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v16 = [a2 position];
                if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v17 = 0;
                v18 = 0;
                v19 = 0;
                while (1)
                {
                  v39 = 0;
                  v20 = [a2 position] + 1;
                  if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
                  {
                    v22 = [a2 data];
                    [v22 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v19 |= (v39 & 0x7F) << v17;
                  if ((v39 & 0x80) == 0)
                  {
                    break;
                  }

                  v17 += 7;
                  v11 = v18++ >= 9;
                  if (v11)
                  {
                    goto LABEL_45;
                  }
                }

                [a2 hasError];
LABEL_45:
                PBRepeatedInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v31 = 0;
              v32 = 0;
              v33 = 0;
              while (1)
              {
                LOBYTE(v37) = 0;
                v34 = [a2 position] + 1;
                if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
                {
                  v36 = [a2 data];
                  [v36 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v33 |= (v37 & 0x7F) << v31;
                if ((v37 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                v11 = v32++ >= 9;
                if (v11)
                {
                  goto LABEL_78;
                }
              }

              [a2 hasError];
LABEL_78:
              PBRepeatedInt32Add();
            }

            goto LABEL_61;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadString();
            [a1 setSource:v14];
            goto LABEL_60;
          }

          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            [a1 setSourceAppBundleIdentifier:v14];
            goto LABEL_60;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v37) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v37 & 0x7F) << v23;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_66;
            }
          }

          v29 = (v25 != 0) & ~[a2 hasError];
LABEL_66:
          [a1 setConfirmed:v29];
          goto LABEL_61;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          [a1 setInput:v14];
          goto LABEL_60;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          [a1 setCanonicalValue:v14];
          goto LABEL_60;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setUuid:v14];
LABEL_60:

          goto LABEL_61;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_61:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INMessage *INIntentSlotValueTransformFromMessage(void *a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 audioMessageFile];
    if (v3)
    {
      v4 = MEMORY[0x1E695DEC8];
      v5 = [v2 audioMessageFile];
      v6 = [v4 arrayWithObject:v5];
    }

    else
    {
      v6 = [v2 attachmentFiles];
    }

    v8 = [MEMORY[0x1E695DF70] array];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v9 = [v2 inlineGlyphContents];
    v10 = [v9 countByEnumeratingWithState:&v74 objects:v78 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v75;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v75 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = INIntentSlotValueTransformFromDictionary(*(*(&v74 + 1) + 8 * i));
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v74 objects:v78 count:16];
      }

      while (v11);
    }

    v15 = [INMessage alloc];
    v73 = [v2 identifier];
    v72 = [v2 conversationIdentifier];
    v71 = [v2 content];
    v16 = [v2 dateSent];
    if (v16)
    {
      v17 = [MEMORY[0x1E695DEE8] currentCalendar];
      v47 = [v2 dateSent];
      INIntentSlotValueTransformFromDateTime(v47);
      v46 = v48 = v17;
      v66 = [v17 dateFromComponents:?];
    }

    else
    {
      v66 = 0;
    }

    v18 = [v2 sender];
    v70 = INIntentSlotValueTransformFromContact(v18);
    v19 = [v2 recipients];
    v69 = INIntentSlotValueTransformFromContacts(v19);
    v20 = [v2 speakableGroupName];
    v68 = INIntentSlotValueTransformFromDataString(v20);
    v21 = [v2 dateLastMessageRead];
    if (v21)
    {
      v22 = [MEMORY[0x1E695DEE8] currentCalendar];
      v44 = [v2 dateLastMessageRead];
      INIntentSlotValueTransformFromDateTime(v44);
      v43 = v45 = v22;
      v23 = [v22 dateFromComponents:?];
    }

    else
    {
      v23 = 0;
    }

    v57 = [v2 numberOfAttachments];
    v56 = INIntentSlotValueTransformFromInteger(v57);
    v24 = [v2 type] - 1;
    v62 = v18;
    v63 = v16;
    v60 = v20;
    v61 = v19;
    v58 = v21;
    v65 = v23;
    if (v24 > 0x22)
    {
      v54 = 0;
    }

    else
    {
      v54 = qword_18EE5EDD0[v24];
    }

    v25 = [v2 hasEffect];
    v26 = [v2 effect];
    if (((v26 - 1 < 0xD) & v25) != 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v51 = v27;
    v55 = [v2 referencedMessage];
    v67 = INIntentSlotValueTransformFromMessage();
    v28 = [v2 serviceName];
    v64 = v6;
    v29 = INIntentSlotValueTransformFromFiles(v6);
    v53 = [v2 location];
    v49 = INIntentSlotValueTransformFromLocation(v53);
    v52 = [v2 linkMetadata];
    v30 = INIntentSlotValueTransformFromMessageLinkMetadata(v52);
    v50 = [v2 reaction];
    v31 = INIntentSlotValueTransformFromMessageReaction(v50);
    v32 = [v2 sticker];
    v33 = INIntentSlotValueTransformFromSticker(v32);
    v34 = [v2 translatedToLanguage];
    v59 = [(INMessage *)v15 initWithIdentifier:v73 conversationIdentifier:v72 content:v71 dateSent:v66 sender:v70 recipients:v69 groupName:v68 dateMessageWasLastRead:v65 numberOfAttachments:v56 messageType:v54 messageEffectType:v51 referencedMessage:v67 serviceName:v28 attachmentFiles:v29 location:v49 linkMetadata:v30 reaction:v31 sticker:v33 inlineGlyphContent:v8 translatedToLanguage:v34];

    if (v58)
    {
    }

    if (v63)
    {
    }

    v35 = [v2 linkMetadata];
    v36 = INIntentSlotValueTransformFromMessageLinkMetadata(v35);
    v7 = v59;
    [(INMessage *)v59 setLinkMetadata:v36];

    v37 = [v2 paymentAmount];
    v38 = INIntentSlotValueTransformFromCurrencyAmountValue(v37);
    [(INMessage *)v59 setPaymentAmount:v38];

    v39 = [v2 locationName];
    [(INMessage *)v59 setLocationName:v39];

    v40 = [v2 fileExtension];
    [(INMessage *)v59 setFileExtension:v40];
  }

  else
  {
    v7 = 0;
  }

  v41 = *MEMORY[0x1E69E9840];

  return v7;
}

id INIntentSlotValueTransformFromDateTime(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = 0;
    goto LABEL_60;
  }

  if ([v1 hasDate])
  {
    v3 = [v2 date];
    if ([v3 hasYear])
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v4 setYear:{objc_msgSend(v3, "year")}];
      if (([v3 hasMonth] & 1) == 0)
      {
        goto LABEL_12;
      }

      if (v4)
      {
LABEL_11:
        [v4 setMonth:{objc_msgSend(v3, "month")}];
LABEL_12:
        if (([v3 hasDayOfMonth] & 1) == 0)
        {
          goto LABEL_18;
        }

        if (v4)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else if (([v3 hasMonth] & 1) == 0)
    {
      if (([v3 hasDayOfMonth] & 1) == 0)
      {
        v4 = 0;
LABEL_18:
        if ([v3 hasDayOfWeek] && objc_msgSend(v3, "dayOfWeek"))
        {
          if (!v4)
          {
            v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
          }

          if ([v3 dayOfWeek] == 7)
          {
            v5 = 1;
          }

          else
          {
            v5 = [v3 dayOfWeek] + 1;
          }

          [v4 setWeekday:v5];
        }

        goto LABEL_27;
      }

LABEL_16:
      v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
LABEL_17:
      [v4 setDay:{objc_msgSend(v3, "dayOfMonth")}];
      goto LABEL_18;
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
    goto LABEL_11;
  }

  v4 = 0;
LABEL_27:
  if ([v2 hasTime])
  {
    v6 = [v2 time];
    if ([v6 hasHourOfDay])
    {
      if (!v4)
      {
        v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
      }

      [v4 setHour:{objc_msgSend(v6, "hourOfDay")}];
    }

    if ([v6 hasMinuteOfHour])
    {
      if (!v4)
      {
        v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
      }

      [v4 setMinute:{objc_msgSend(v6, "minuteOfHour")}];
    }

    if ([v6 hasSecondOfMinute])
    {
      if (!v4)
      {
        v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
      }

      [v4 setSecond:{objc_msgSend(v6, "secondOfMinute")}];
    }

    if ([v6 hasMillisOfSecond])
    {
      if (!v4)
      {
        v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
      }

      [v4 setNanosecond:{1000000 * objc_msgSend(v6, "millisOfSecond")}];
    }
  }

  if ([v2 hasCalendarSystem])
  {
    v7 = [v2 calendarSystem] - 1;
    if (v7 <= 0xB && ((0xDF7u >> v7) & 1) != 0)
    {
      v8 = **(&unk_1E727F6F0 + v7);
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v8];
        if (v10)
        {
          if (!v4)
          {
            v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
          }

          [v4 setCalendar:v10];
        }
      }
    }
  }

  if ([v2 hasTimeZoneID])
  {
    v11 = MEMORY[0x1E695DFE8];
    v12 = [v2 timeZoneID];
    v13 = [v11 timeZoneWithName:v12];

    if (v13)
    {
      if (!v4)
      {
        v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
      }

      [v4 setTimeZone:v13];
    }
  }

LABEL_60:

  return v4;
}

uint64_t INPrivacyEntitlementOptionsForValueMetadata(void *a1)
{
  v1 = a1;
  v2 = [v1 requiredEntitlementsCount];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    for (i = 0; i != v3; ++i)
    {
      v6 = [v1 requiredEntitlementAtIndex:i];
      v7 = v4 | 1;
      if (v6 != 1)
      {
        v7 = v4;
      }

      if (v6 == 2)
      {
        v4 |= 2uLL;
      }

      else
      {
        v4 = v7;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

INPersonHandle *INIntentSlotValueTransformFromContactHandle(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [INPersonHandle alloc];
    v3 = [v1 value];
    v4 = [v1 type] - 1;
    if (v4 > 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_18EE5ED50[v4];
    }

    v7 = [v1 label];
    v8 = [v1 emergencyType];
    v9 = 2;
    if (v8 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v8 == 1;
    }

    v11 = [v1 faceTimeType];
    if (v11 != 2)
    {
      v9 = v11 == 1;
    }

    v6 = -[INPersonHandle initWithValue:type:label:emergencyType:faceTimeType:suggested:](v2, "initWithValue:type:label:emergencyType:faceTimeType:suggested:", v3, v5, v7, v10, v9, [v1 suggested]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id INIntentSlotValueTransformFromInteger(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 values];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = INIntentSlotValueTransformFromIntegerValue(*(*(&v10 + 1) + 8 * i));
        if (v6)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id INIntentSlotValueTransformFromLocation(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 values];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = INIntentSlotValueTransformFromLocationValue(*(*(&v10 + 1) + 8 * i));
        if (v6)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id INIntentSlotValueTransformFromFiles(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromFile(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

INMessageLinkMetadata *INIntentSlotValueTransformFromMessageLinkMetadata(INMessageLinkMetadata *a1)
{
  if (a1)
  {
    v2 = a1;
    v17 = [INMessageLinkMetadata alloc];
    v59 = [(INMessageLinkMetadata *)v2 siteName];
    v58 = [(INMessageLinkMetadata *)v2 summary];
    v57 = [(INMessageLinkMetadata *)v2 title];
    v56 = [(INMessageLinkMetadata *)v2 openGraphType];
    v55 = [(INMessageLinkMetadata *)v2 itemType];
    v19 = [(INMessageLinkMetadata *)v2 linkURL];
    v50 = INIntentSlotValueTransformFromURLValue(v19);
    v54 = [(INMessageLinkMetadata *)v2 originalURL];
    v53 = [(INMessageLinkMetadata *)v2 imageURLs];
    v52 = [(INMessageLinkMetadata *)v2 iconURLs];
    v51 = [(INMessageLinkMetadata *)v2 creator];
    FacadeType = INMessageLinkMediaTypeGetFacadeType([(INMessageLinkMetadata *)v2 hasLinkMediaType], [(INMessageLinkMetadata *)v2 linkMediaType]);
    v47 = [(INMessageLinkMetadata *)v2 iTunesStoreIdentifier];
    v49 = [(INMessageLinkMetadata *)v2 iTunesStoreFrontIdentifier];
    v48 = [(INMessageLinkMetadata *)v2 songTitle];
    v44 = [(INMessageLinkMetadata *)v2 songArtist];
    v46 = [(INMessageLinkMetadata *)v2 songAlbum];
    v45 = [(INMessageLinkMetadata *)v2 albumName];
    v41 = [(INMessageLinkMetadata *)v2 albumArtist];
    v43 = [(INMessageLinkMetadata *)v2 musicVideoName];
    v42 = [(INMessageLinkMetadata *)v2 musicVideoArtist];
    v39 = [(INMessageLinkMetadata *)v2 artistName];
    v40 = [(INMessageLinkMetadata *)v2 artistGenre];
    v37 = [(INMessageLinkMetadata *)v2 playlistName];
    v38 = [(INMessageLinkMetadata *)v2 playlistCurator];
    v35 = [(INMessageLinkMetadata *)v2 radioName];
    v36 = [(INMessageLinkMetadata *)v2 radioCurator];
    v33 = [(INMessageLinkMetadata *)v2 softwareName];
    v34 = [(INMessageLinkMetadata *)v2 softwareGenre];
    v32 = [(INMessageLinkMetadata *)v2 softwarePlatform];
    v14 = [(INMessageLinkMetadata *)v2 bookName];
    v31 = [(INMessageLinkMetadata *)v2 bookAuthor];
    v13 = [(INMessageLinkMetadata *)v2 audioBookName];
    v30 = [(INMessageLinkMetadata *)v2 audioBookAuthor];
    v29 = [(INMessageLinkMetadata *)v2 audioBookNarrator];
    v28 = [(INMessageLinkMetadata *)v2 podcastName];
    v27 = [(INMessageLinkMetadata *)v2 podcastArtist];
    v26 = [(INMessageLinkMetadata *)v2 podcastEpisodeName];
    v25 = [(INMessageLinkMetadata *)v2 podcastEpisodePodcastName];
    v24 = [(INMessageLinkMetadata *)v2 podcastEpisodeArtist];
    v15 = [(INMessageLinkMetadata *)v2 podcastEpisodeReleaseDate];
    v23 = INIntentSlotValueTransformFromDateTime(v15);
    v22 = [(INMessageLinkMetadata *)v2 tvEpisodeEpisodeName];
    v20 = [(INMessageLinkMetadata *)v2 tvEpisodeSeasonName];
    v21 = [(INMessageLinkMetadata *)v2 tvEpisodeGenre];
    v12 = [(INMessageLinkMetadata *)v2 tvSeasonName];
    v3 = [(INMessageLinkMetadata *)v2 tvSeasonGenre];
    v4 = [(INMessageLinkMetadata *)v2 movieName];
    v5 = [(INMessageLinkMetadata *)v2 movieGenre];
    v6 = [(INMessageLinkMetadata *)v2 tvShowName];
    v7 = [(INMessageLinkMetadata *)v2 movieBundleName];
    v8 = [(INMessageLinkMetadata *)v2 movieBundleGenre];
    v9 = [(INMessageLinkMetadata *)v2 appleTvTitle];
    v10 = [(INMessageLinkMetadata *)v2 appleTvSubtitle];

    v18 = [(INMessageLinkMetadata *)v17 initWithSiteName:v59 summary:v58 title:v57 openGraphType:v56 itemType:v55 linkURL:v50 originalURL:v54 imageURLs:v53 iconURLs:v52 creator:v51 linkMediaType:FacadeType iTunesStoreIdentifier:v47 iTunesStoreFrontIdentifier:v49 songTitle:v48 songArtist:v44 songAlbum:v46 albumName:v45 albumArtist:v41 musicVideoName:v43 musicVideoArtist:v42 artistName:v39 artistGenre:v40 playlistName:v37 playlistCurator:v38 radioName:v35 radioCurator:v36 softwareName:v33 softwareGenre:v34 softwarePlatform:v32 bookName:v14 bookAuthor:v31 audioBookName:v13 audioBookAuthor:v30 audioBookNarrator:v29 podcastName:v28 podcastArtist:v27 podcastEpisodeName:v26 podcastEpisodePodcastName:v25 podcastEpisodeArtist:v24 podcastEpisodeReleaseDate:v23 tvEpisodeEpisodeName:v22 tvEpisodeSeasonName:v20 tvEpisodeGenre:v21 tvSeasonName:v12 tvSeasonGenre:v3 movieName:v4 movieGenre:v5 tvShowName:v6 movieBundleName:v7 movieBundleGenre:v8 appleTvTitle:v9 appleTvSubtitle:v10];
    a1 = v18;
    v1 = vars8;
  }

  return a1;
}

INMessageReaction *INIntentSlotValueTransformFromMessageReaction(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INMessageReaction alloc];
    v3 = [v1 hasReactionType];
    v4 = [v1 reactionType];
    if (v3 && (v4 - 1) <= 0xB)
    {
      v5 = qword_18EE5E9D8[v4 - 1];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v1 reactionDescription];
    v7 = [v1 emoji];
    v8 = [v1 sticker];

    v9 = INIntentSlotValueTransformFromSticker(v8);
    v10 = [(INMessageReaction *)v2 initWithReactionType:v5 reactionDescription:v6 emoji:v7 sticker:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

INSticker *INIntentSlotValueTransformFromSticker(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INSticker alloc];
    v3 = [v1 hasType];
    v4 = [v1 type];
    if (v3 && (v4 - 1) <= 5)
    {
      v5 = qword_18EE5FF28[v4 - 1];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v1 avatarDescriptor];
    v7 = [v1 appBundleID];
    v8 = [v1 stickerDescription];
    v9 = [v1 emoji];

    v10 = [(INSticker *)v2 initWithType:v5 avatarDescriptor:v6 appBundleID:v7 stickerDescription:v8 emoji:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

INCurrencyAmount *INIntentSlotValueTransformFromCurrencyAmountValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v3);

    v4 = [INCurrencyAmount alloc];
    v5 = [v2 amount];
    v6 = INIntentSlotValueTransformFromDecimalNumberValue(v5);
    v7 = [v2 currencyCode];
    v8 = [(INCurrencyAmount *)v4 initWithAmount:v6 currencyCode:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t _INPBIntentSlotResolutionResultReadFrom(void *a1, void *a2)
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

              v17 |= (v24 & 0x7F) << v15;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_61;
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

LABEL_61:
            [a1 setType:v21];
            goto LABEL_56;
          case 2:
            v14 = objc_alloc_init(_INPBPayloadSuccess);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBPayloadSuccessReadFrom(v14, a2))
            {
LABEL_64:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setPayloadSuccess:v14];
            goto LABEL_55;
          case 3:
            v14 = objc_alloc_init(_INPBPayloadUnsupported);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBPayloadUnsupportedReadFrom(v14, a2))
            {
              goto LABEL_64;
            }

            PBReaderRecallMark();
            [a1 setPayloadUnsupported:v14];
            goto LABEL_55;
        }
      }

      else if (v13 > 6)
      {
        if (v13 == 7)
        {
          v14 = objc_alloc_init(_INPBPayloadConfirmation);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBPayloadConfirmationReadFrom(v14, a2))
          {
            goto LABEL_64;
          }

          PBReaderRecallMark();
          [a1 setPayloadConfirmation:v14];
          goto LABEL_55;
        }

        if (v13 == 8)
        {
          v14 = objc_alloc_init(_INPBPayloadNeedsExecuteIntent);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBPayloadNeedsExecuteIntentReadFrom(v14, a2))
          {
            goto LABEL_64;
          }

          PBReaderRecallMark();
          [a1 setPayloadNeedsExecuteIntent:v14];
          goto LABEL_55;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBPayloadNeedsValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBPayloadNeedsValueReadFrom(v14, a2))
          {
            goto LABEL_64;
          }

          PBReaderRecallMark();
          [a1 setPayloadNeedsValue:v14];
          goto LABEL_55;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBPayloadNeedsDisambiguation);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBPayloadNeedsDisambiguationReadFrom(v14, a2))
          {
            goto LABEL_64;
          }

          PBReaderRecallMark();
          [a1 setPayloadNeedsDisambiguation:v14];
LABEL_55:

          goto LABEL_56;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

_INPBContact *INIntentSlotValueTransformToContact(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = INIntentSlotValueTransformToContactValue(v1);
  if (v2)
  {
    v3 = objc_alloc_init(_INPBContact);
    [(_INPBContact *)v3 addValue:v2];
  }

  else
  {
    v3 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v1 scoredAlternatives];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v2;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v2 = INIntentSlotValueTransformToScoredContactValue(*(*(&v12 + 1) + 8 * v8));

        if (v2)
        {
          [(_INPBContact *)v3 addValue:v2];
        }

        ++v8;
        v9 = v2;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

_INPBContactValue *INIntentSlotValueTransformToContactValue(void *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBContactValue);
    v3 = [v1 nameComponents];
    v4 = [v3 namePrefix];
    [(_INPBContactValue *)v2 setNamePrefix:v4];

    v5 = [v3 phoneticRepresentation];
    v6 = [v5 namePrefix];
    [(_INPBContactValue *)v2 setPhoneticNamePrefix:v6];

    v7 = [v3 givenName];
    [(_INPBContactValue *)v2 setFirstName:v7];

    v8 = [v3 phoneticRepresentation];
    v9 = [v8 givenName];
    [(_INPBContactValue *)v2 setPhoneticFirstName:v9];

    v10 = [v3 middleName];
    [(_INPBContactValue *)v2 setMiddleName:v10];

    v11 = [v3 phoneticRepresentation];
    v12 = [v11 middleName];
    [(_INPBContactValue *)v2 setPhoneticMiddleName:v12];

    v13 = [v3 familyName];
    [(_INPBContactValue *)v2 setLastName:v13];

    v14 = [v3 phoneticRepresentation];
    v15 = [v14 familyName];
    [(_INPBContactValue *)v2 setPhoneticLastName:v15];

    v16 = [v3 nameSuffix];
    [(_INPBContactValue *)v2 setNameSuffix:v16];

    v17 = [v3 phoneticRepresentation];
    v18 = [v17 nameSuffix];
    [(_INPBContactValue *)v2 setPhoneticNameSuffix:v18];

    v19 = [v3 nickname];
    [(_INPBContactValue *)v2 setNickName:v19];

    v20 = [v1 displayName];
    [(_INPBContactValue *)v2 setFullName:v20];

    v21 = [v1 personHandle];
    v22 = INIntentSlotValueTransformToContactHandle(v21);
    [(_INPBContactValue *)v2 setContactHandle:v22];

    v23 = [v1 image];
    v24 = INIntentSlotValueTransformToImageValue(v23);
    [(_INPBContactValue *)v2 setImage:v24];

    v25 = [v1 suggestionType];
    if (v25 == 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = v25 == 1;
    }

    [(_INPBContactValue *)v2 setSuggestionType:v26];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = [v1 aliases];
    v28 = [v27 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v48;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v48 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = INIntentSlotValueTransformToContactHandle(*(*(&v47 + 1) + 8 * i));
          if (v32)
          {
            [(_INPBContactValue *)v2 addAliases:v32];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v29);
    }

    v33 = [v1 _userInput];
    v34 = [v1 contactIdentifier];
    v35 = [v1 sourceAppBundleIdentifier];
    v36 = v35;
    if (!v33 && !v34 && !v35)
    {
      goto LABEL_28;
    }

    v37 = objc_alloc_init(_INPBValueMetadata);
    v38 = v37;
    if (v33)
    {
      [(_INPBValueMetadata *)v37 setInput:v33];
    }

    if (v34)
    {
      [(_INPBValueMetadata *)v38 setUuid:v34];
    }

    if ([(__CFString *)v36 isEqualToString:@"com.apple.MobileAddressBook"])
    {
      [(_INPBValueMetadata *)v38 addRequiredEntitlement:1];
      v39 = @"device";
    }

    else
    {
      if (!v36)
      {
LABEL_27:
        [(_INPBContactValue *)v2 setValueMetadata:v38];

LABEL_28:
        v40 = [v1 customIdentifier];
        [(_INPBContactValue *)v2 setCustomIdentifier:v40];

        v41 = [v1 relationship];
        [(_INPBContactValue *)v2 setRelationship:v41];

        -[_INPBContactValue setIsMe:](v2, "setIsMe:", [v1 isMe]);
        v42 = [v1 phonemeData];
        [(_INPBContactValue *)v2 setPhonemeData:v42];

        -[_INPBContactValue setIsContactSuggestion:](v2, "setIsContactSuggestion:", [v1 isContactSuggestion]);
        v43 = [v1 searchProvider] - 1;
        if (v43 < 3)
        {
          v44 = (v43 + 1);
        }

        else
        {
          v44 = 0;
        }

        [(_INPBContactValue *)v2 setSearchProvider:v44];

        goto LABEL_32;
      }

      [(_INPBValueMetadata *)v38 setSourceAppBundleIdentifier:v36];
      v39 = v36;
    }

    [(_INPBValueMetadata *)v38 setSource:v39];
    goto LABEL_27;
  }

  v2 = 0;
LABEL_32:

  v45 = *MEMORY[0x1E69E9840];

  return v2;
}

id INIntentSlotValueTransformFromContact(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = a1;
  v1 = [v23 values];
  v2 = [v1 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_26;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = *v27;
  v24 = *v27;
  v25 = v1;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v27 != v6)
      {
        objc_enumerationMutation(v1);
      }

      v8 = *(*(&v26 + 1) + 8 * i);
      if (!v5)
      {
        v9 = [*(*(&v26 + 1) + 8 * i) valueMetadata];
        v10 = INPrivacyEntitlementOptionsForValueMetadata(v9);

        if (!v10)
        {
          v5 = v8;
          continue;
        }
      }

      v11 = INIntentSlotValueTransformFromContactValueWithAlternatives(v8, 0);
      if (v11)
      {
        if (!v4)
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        if ([v8 hasValueMetadata])
        {
          v12 = [v8 valueMetadata];
          if ([v12 hasConfidenceScore])
          {
            v13 = [v8 valueMetadata];
            v14 = [v13 confidenceScore];
            v15 = [v14 hasAggregateScore];

            if (v15)
            {
              v16 = MEMORY[0x1E696AD98];
              v12 = [v8 valueMetadata];
              v17 = [v12 confidenceScore];
              [v17 aggregateScore];
              v18 = [v16 numberWithFloat:?];

              v6 = v24;
              v1 = v25;
              goto LABEL_18;
            }

            v18 = 0;
            v6 = v24;
            v1 = v25;
          }

          else
          {
            v18 = 0;
LABEL_18:
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = [[INScoredPerson alloc] initWithPerson:v11 score:v18];
        [v4 addObject:v19];
      }
    }

    v3 = [v1 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v3);
LABEL_26:

  v20 = INIntentSlotValueTransformFromContactValueWithScoredAlternatives(v5, v4);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

id INIntentSlotValueTransformFromContactValueWithScoredAlternatives(void *a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v5);

    if ([v3 hasValueMetadata])
    {
      v6 = [v3 valueMetadata];
      if ([v6 hasInput])
      {
        v53 = [v6 input];
      }

      else
      {
        v53 = 0;
      }

      if ([v6 hasUuid])
      {
        v52 = [v6 uuid];
      }

      else
      {
        v52 = 0;
      }
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    if (([v3 hasNamePrefix] & 1) != 0 || (objc_msgSend(v3, "hasFirstName") & 1) != 0 || (objc_msgSend(v3, "hasMiddleName") & 1) != 0 || (objc_msgSend(v3, "hasLastName") & 1) != 0 || (objc_msgSend(v3, "hasNameSuffix") & 1) != 0 || (objc_msgSend(v3, "hasNickName") & 1) != 0 || (objc_msgSend(v3, "hasPhoneticNamePrefix") & 1) != 0 || (objc_msgSend(v3, "hasPhoneticFirstName") & 1) != 0 || (objc_msgSend(v3, "hasPhoneticMiddleName") & 1) != 0 || (objc_msgSend(v3, "hasPhoneticLastName") & 1) != 0 || objc_msgSend(v3, "hasPhoneticNameSuffix"))
    {
      v8 = objc_alloc_init(MEMORY[0x1E696ADF0]);
      if ([v3 hasNamePrefix])
      {
        v9 = [v3 namePrefix];
        [v8 setNamePrefix:v9];
      }

      if ([v3 hasFirstName])
      {
        v10 = [v3 firstName];
        [v8 setGivenName:v10];
      }

      if ([v3 hasMiddleName])
      {
        v11 = [v3 middleName];
        [v8 setMiddleName:v11];
      }

      if ([v3 hasLastName])
      {
        v12 = [v3 lastName];
        [v8 setFamilyName:v12];
      }

      if ([v3 hasNameSuffix])
      {
        v13 = [v3 nameSuffix];
        [v8 setNameSuffix:v13];
      }

      if ([v3 hasNickName])
      {
        v14 = [v3 nickName];
        [v8 setNickname:v14];
      }

      if (([v3 hasPhoneticNamePrefix] & 1) != 0 || (objc_msgSend(v3, "hasPhoneticFirstName") & 1) != 0 || (objc_msgSend(v3, "hasPhoneticMiddleName") & 1) != 0 || (objc_msgSend(v3, "hasPhoneticLastName") & 1) != 0 || objc_msgSend(v3, "hasPhoneticNameSuffix"))
      {
        v15 = objc_alloc_init(MEMORY[0x1E696ADF0]);
        if ([v3 hasPhoneticNamePrefix])
        {
          v16 = [v3 phoneticNamePrefix];
          [v15 setNamePrefix:v16];
        }

        if ([v3 hasPhoneticFirstName])
        {
          v17 = [v3 phoneticFirstName];
          [v15 setGivenName:v17];
        }

        if ([v3 hasPhoneticMiddleName])
        {
          v18 = [v3 phoneticMiddleName];
          [v15 setMiddleName:v18];
        }

        if ([v3 hasPhoneticLastName])
        {
          v19 = [v3 phoneticLastName];
          [v15 setFamilyName:v19];
        }

        if ([v3 hasPhoneticNameSuffix])
        {
          v20 = [v3 phoneticNameSuffix];
          [v15 setNameSuffix:v20];
        }

        [v8 setPhoneticRepresentation:v15];
      }
    }

    else
    {
      v8 = 0;
    }

    if ([v3 hasFullName])
    {
      v51 = [v3 fullName];
    }

    else
    {
      v51 = 0;
    }

    if ([v3 hasContactHandle])
    {
      v21 = [v3 contactHandle];
      v50 = INIntentSlotValueTransformFromContactHandle(v21);
    }

    else
    {
      v50 = 0;
    }

    if ([v3 hasImage])
    {
      v22 = [v3 image];
      v48 = INIntentSlotValueTransformFromImageValue(v22);
    }

    else
    {
      v48 = 0;
    }

    if ([v3 hasCustomIdentifier])
    {
      v47 = [v3 customIdentifier];
    }

    else
    {
      v47 = 0;
    }

    if ([v3 hasPhonemeData])
    {
      v46 = [v3 phonemeData];
    }

    else
    {
      v46 = 0;
    }

    v23 = [v3 aliases];
    v49 = v4;
    if ([v23 count])
    {
      v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v23, "count")}];
    }

    else
    {
      v24 = 0;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v55;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v55 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = INIntentSlotValueTransformFromContactHandle(*(*(&v54 + 1) + 8 * i));
          if (v30)
          {
            [v24 addObject:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v27);
    }

    if ([v3 hasRelationship])
    {
      v31 = [v3 relationship];
    }

    else
    {
      v31 = 0;
    }

    if ([v3 hasIsMe])
    {
      v45 = [v3 isMe];
    }

    else
    {
      v45 = 0;
    }

    if ([v3 hasIsContactSuggestion])
    {
      v32 = [v3 isContactSuggestion];
    }

    else
    {
      v32 = 0;
    }

    v33 = [INPerson alloc];
    v34 = [v3 suggestionType];
    if (v34 == 2)
    {
      v35 = 2;
    }

    else
    {
      v35 = v34 == 1;
    }

    v44 = [v3 valueMetadata];
    v36 = [v44 sourceAppBundleIdentifier];
    v37 = [v3 searchProvider] - 1;
    if (v37 < 3)
    {
      v38 = v37 + 1;
    }

    else
    {
      v38 = 0;
    }

    LOBYTE(v43) = v32;
    LOBYTE(v42) = v45;
    v7 = [(INPerson *)v33 _initWithUserInput:v53 personHandle:v50 nameComponents:v8 displayName:v51 image:v48 contactIdentifier:v52 customIdentifier:v47 relationship:v31 aliases:v24 suggestionType:v35 isMe:v42 scoredAlternatives:v49 sourceAppBundleIdentifier:v36 phonemeData:v46 isContactSuggestion:v43 searchProvider:v38];

    v4 = v49;
  }

  else
  {
    v7 = 0;
  }

  v39 = v7;

  v40 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _INPBGenericIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
          v14 = PBReaderReadString();
          [a1 setVerb:v14];
          goto LABEL_33;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBPropertyReadFrom(v14, a2))
          {
LABEL_37:

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addParameters:v14];
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
            goto LABEL_37;
          }

          PBReaderRecallMark();
          [a1 setMetadata:v14];
          goto LABEL_33;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setDomain:v14];
LABEL_33:

          goto LABEL_34;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBPropertyReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBIntentSlotValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentSlotValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPayload:v13];
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    [a1 setRole:v13];
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INIsReservationInteraction(void *a1)
{
  v1 = a1;
  v2 = [v1 intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 intentResponse];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

_INPBString *INIntentSlotValueTransformToString(void *a1)
{
  v1 = INIntentSlotValueTransformToStringValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBString);
    [(_INPBString *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromMessages(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromMessage(*(*(&v12 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t INCodableDateComponentsAttributeMetadataTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"DateTime"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Date"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Time"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t INCodableDateComponentsAttributeMetadataFormatFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Style"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Relative"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Template"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t INCodableDateComponentsAttributeMetadataStyleFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Full"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Long"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Medium"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Short"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"No"])
  {
    v2 = 0;
  }

  else
  {
    v2 = 4;
  }

  return v2;
}

uint64_t INCodablePersonAttributeMetadataTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Contact"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Email"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Phone"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"EmailORPhone"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Username"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t INCodableAttributeMetadataInputTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Field"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Stepper"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Slider"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t INCodableTimeIntervalAttributeMetadataUnitWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Seconds"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Minutes"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Hours"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Days"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _INPBIntentSlotValueReadFrom(void *a1, void *a2)
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
        LOBYTE(v914) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v914) & 0x7F) << v5;
        if ((LOBYTE(v914) & 0x80) == 0)
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) <= 1607)
      {
        if (v14 > 1003)
        {
          if (v14 <= 1404)
          {
            if (v14 <= 1301)
            {
              if (v14 > 1008)
              {
                if (v14 <= 1199)
                {
                  if (v14 != 1009)
                  {
                    if (v14 != 1010)
                    {
                      goto LABEL_1452;
                    }

                    v15 = objc_alloc_init(_INPBShareDestination);
                    v914 = 0.0;
                    v915 = 0;
                    if (!PBReaderPlaceMark() || !_INPBShareDestinationReadFrom(v15, a2))
                    {
LABEL_2213:

                      return 0;
                    }

                    PBReaderRecallMark();
                    if (v15)
                    {
                      [a1 addPayloadShareDestination:v15];
                    }

                    goto LABEL_1592;
                  }

                  if (v13 != 2)
                  {
                    v642 = 0;
                    v643 = 0;
                    v644 = 0;
                    while (1)
                    {
                      LOBYTE(v914) = 0;
                      v645 = [a2 position] + 1;
                      if (v645 >= [a2 position] && (v646 = objc_msgSend(a2, "position") + 1, v646 <= objc_msgSend(a2, "length")))
                      {
                        v647 = [a2 data];
                        [v647 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v644 |= (LOBYTE(v914) & 0x7F) << v642;
                      if ((LOBYTE(v914) & 0x80) == 0)
                      {
                        goto LABEL_2205;
                      }

                      v642 += 7;
                      v11 = v643++ >= 9;
                      if (v11)
                      {
                        goto LABEL_2206;
                      }
                    }
                  }

                  v914 = 0.0;
                  v915 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v257 = [a2 position];
                    if (v257 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v258 = 0;
                    v259 = 0;
                    v260 = 0;
                    while (1)
                    {
                      v916 = 0;
                      v261 = [a2 position] + 1;
                      if (v261 >= [a2 position] && (v262 = objc_msgSend(a2, "position") + 1, v262 <= objc_msgSend(a2, "length")))
                      {
                        v263 = [a2 data];
                        [v263 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v260 |= (v916 & 0x7F) << v258;
                      if ((v916 & 0x80) == 0)
                      {
                        break;
                      }

                      v258 += 7;
                      v11 = v259++ >= 9;
                      if (v11)
                      {
                        goto LABEL_910;
                      }
                    }

                    [a2 hasError];
LABEL_910:
                    PBRepeatedInt32Add();
                  }
                }

                else
                {
                  switch(v14)
                  {
                    case 0x4B0:
                      v15 = objc_alloc_init(_INPBSupportedTrafficIncidentType);
                      v914 = 0.0;
                      v915 = 0;
                      if (!PBReaderPlaceMark() || !_INPBSupportedTrafficIncidentTypeReadFrom(v15, a2))
                      {
                        goto LABEL_2213;
                      }

                      PBReaderRecallMark();
                      if (v15)
                      {
                        [a1 addPayloadSupportedTrafficIncidentType:v15];
                      }

                      goto LABEL_1592;
                    case 0x4B1:
                      if (v13 != 2)
                      {
                        v654 = 0;
                        v655 = 0;
                        v656 = 0;
                        while (1)
                        {
                          LOBYTE(v914) = 0;
                          v657 = [a2 position] + 1;
                          if (v657 >= [a2 position] && (v658 = objc_msgSend(a2, "position") + 1, v658 <= objc_msgSend(a2, "length")))
                          {
                            v659 = [a2 data];
                            [v659 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                          }

                          else
                          {
                            [a2 _setError];
                          }

                          v656 |= (LOBYTE(v914) & 0x7F) << v654;
                          if ((LOBYTE(v914) & 0x80) == 0)
                          {
                            break;
                          }

                          v654 += 7;
                          v11 = v655++ >= 9;
                          if (v11)
                          {
                            goto LABEL_2206;
                          }
                        }

LABEL_2205:
                        [a2 hasError];
LABEL_2206:
                        PBRepeatedInt32Add();
                        goto LABEL_2207;
                      }

                      v914 = 0.0;
                      v915 = 0;
                      result = PBReaderPlaceMark();
                      if (!result)
                      {
                        return result;
                      }

                      while (1)
                      {
                        v271 = [a2 position];
                        if (v271 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                        {
                          break;
                        }

                        v272 = 0;
                        v273 = 0;
                        v274 = 0;
                        while (1)
                        {
                          v916 = 0;
                          v275 = [a2 position] + 1;
                          if (v275 >= [a2 position] && (v276 = objc_msgSend(a2, "position") + 1, v276 <= objc_msgSend(a2, "length")))
                          {
                            v277 = [a2 data];
                            [v277 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                          }

                          else
                          {
                            [a2 _setError];
                          }

                          v274 |= (v916 & 0x7F) << v272;
                          if ((v916 & 0x80) == 0)
                          {
                            break;
                          }

                          v272 += 7;
                          v11 = v273++ >= 9;
                          if (v11)
                          {
                            goto LABEL_940;
                          }
                        }

                        [a2 hasError];
LABEL_940:
                        PBRepeatedInt32Add();
                      }

                      break;
                    case 0x515:
                      if (v13 != 2)
                      {
                        v630 = 0;
                        v631 = 0;
                        v632 = 0;
                        while (1)
                        {
                          LOBYTE(v914) = 0;
                          v633 = [a2 position] + 1;
                          if (v633 >= [a2 position] && (v634 = objc_msgSend(a2, "position") + 1, v634 <= objc_msgSend(a2, "length")))
                          {
                            v635 = [a2 data];
                            [v635 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                          }

                          else
                          {
                            [a2 _setError];
                          }

                          v632 |= (LOBYTE(v914) & 0x7F) << v630;
                          if ((LOBYTE(v914) & 0x80) == 0)
                          {
                            goto LABEL_2205;
                          }

                          v630 += 7;
                          v11 = v631++ >= 9;
                          if (v11)
                          {
                            goto LABEL_2206;
                          }
                        }
                      }

                      v914 = 0.0;
                      v915 = 0;
                      result = PBReaderPlaceMark();
                      if (!result)
                      {
                        return result;
                      }

                      while (1)
                      {
                        v59 = [a2 position];
                        if (v59 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                        {
                          break;
                        }

                        v60 = 0;
                        v61 = 0;
                        v62 = 0;
                        while (1)
                        {
                          v916 = 0;
                          v63 = [a2 position] + 1;
                          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
                          {
                            v65 = [a2 data];
                            [v65 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                          }

                          else
                          {
                            [a2 _setError];
                          }

                          v62 |= (v916 & 0x7F) << v60;
                          if ((v916 & 0x80) == 0)
                          {
                            break;
                          }

                          v60 += 7;
                          v11 = v61++ >= 9;
                          if (v11)
                          {
                            goto LABEL_242;
                          }
                        }

                        [a2 hasError];
LABEL_242:
                        PBRepeatedInt32Add();
                      }

                      break;
                    default:
                      goto LABEL_1452;
                  }
                }
              }

              else if (v14 <= 1005)
              {
                if (v14 != 1004)
                {
                  v15 = objc_alloc_init(_INPBFilePropertyValue);
                  v914 = 0.0;
                  v915 = 0;
                  if (!PBReaderPlaceMark() || !_INPBFilePropertyValueReadFrom(v15, a2))
                  {
                    goto LABEL_2213;
                  }

                  PBReaderRecallMark();
                  if (v15)
                  {
                    [a1 addPayloadFilePropertyValue:v15];
                  }

                  goto LABEL_1592;
                }

                if (v13 != 2)
                {
                  v636 = 0;
                  v637 = 0;
                  v638 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v639 = [a2 position] + 1;
                    if (v639 >= [a2 position] && (v640 = objc_msgSend(a2, "position") + 1, v640 <= objc_msgSend(a2, "length")))
                    {
                      v641 = [a2 data];
                      [v641 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v638 |= (LOBYTE(v914) & 0x7F) << v636;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v636 += 7;
                    v11 = v637++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v250 = [a2 position];
                  if (v250 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v251 = 0;
                  v252 = 0;
                  v253 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v254 = [a2 position] + 1;
                    if (v254 >= [a2 position] && (v255 = objc_msgSend(a2, "position") + 1, v255 <= objc_msgSend(a2, "length")))
                    {
                      v256 = [a2 data];
                      [v256 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v253 |= (v916 & 0x7F) << v251;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v251 += 7;
                    v11 = v252++ >= 9;
                    if (v11)
                    {
                      goto LABEL_895;
                    }
                  }

                  [a2 hasError];
LABEL_895:
                  PBRepeatedInt32Add();
                }
              }

              else
              {
                if (v14 == 1006)
                {
                  v15 = objc_alloc_init(_INPBFileProperty);
                  v914 = 0.0;
                  v915 = 0;
                  if (!PBReaderPlaceMark() || !_INPBFilePropertyReadFrom(v15, a2))
                  {
                    goto LABEL_2213;
                  }

                  PBReaderRecallMark();
                  if (v15)
                  {
                    [a1 addPayloadFileProperty:v15];
                  }

                  goto LABEL_1592;
                }

                if (v14 == 1007)
                {
                  if (v13 != 2)
                  {
                    v648 = 0;
                    v649 = 0;
                    v650 = 0;
                    while (1)
                    {
                      LOBYTE(v914) = 0;
                      v651 = [a2 position] + 1;
                      if (v651 >= [a2 position] && (v652 = objc_msgSend(a2, "position") + 1, v652 <= objc_msgSend(a2, "length")))
                      {
                        v653 = [a2 data];
                        [v653 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v650 |= (LOBYTE(v914) & 0x7F) << v648;
                      if ((LOBYTE(v914) & 0x80) == 0)
                      {
                        goto LABEL_2205;
                      }

                      v648 += 7;
                      v11 = v649++ >= 9;
                      if (v11)
                      {
                        goto LABEL_2206;
                      }
                    }
                  }

                  v914 = 0.0;
                  v915 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v264 = [a2 position];
                    if (v264 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v265 = 0;
                    v266 = 0;
                    v267 = 0;
                    while (1)
                    {
                      v916 = 0;
                      v268 = [a2 position] + 1;
                      if (v268 >= [a2 position] && (v269 = objc_msgSend(a2, "position") + 1, v269 <= objc_msgSend(a2, "length")))
                      {
                        v270 = [a2 data];
                        [v270 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v267 |= (v916 & 0x7F) << v265;
                      if ((v916 & 0x80) == 0)
                      {
                        break;
                      }

                      v265 += 7;
                      v11 = v266++ >= 9;
                      if (v11)
                      {
                        goto LABEL_925;
                      }
                    }

                    [a2 hasError];
LABEL_925:
                    PBRepeatedInt32Add();
                  }
                }

                else
                {
                  if (v13 != 2)
                  {
                    v624 = 0;
                    v625 = 0;
                    v626 = 0;
                    while (1)
                    {
                      LOBYTE(v914) = 0;
                      v627 = [a2 position] + 1;
                      if (v627 >= [a2 position] && (v628 = objc_msgSend(a2, "position") + 1, v628 <= objc_msgSend(a2, "length")))
                      {
                        v629 = [a2 data];
                        [v629 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v626 |= (LOBYTE(v914) & 0x7F) << v624;
                      if ((LOBYTE(v914) & 0x80) == 0)
                      {
                        goto LABEL_2205;
                      }

                      v624 += 7;
                      v11 = v625++ >= 9;
                      if (v11)
                      {
                        goto LABEL_2206;
                      }
                    }
                  }

                  v914 = 0.0;
                  v915 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v45 = [a2 position];
                    if (v45 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v46 = 0;
                    v47 = 0;
                    v48 = 0;
                    while (1)
                    {
                      v916 = 0;
                      v49 = [a2 position] + 1;
                      if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                      {
                        v51 = [a2 data];
                        [v51 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v48 |= (v916 & 0x7F) << v46;
                      if ((v916 & 0x80) == 0)
                      {
                        break;
                      }

                      v46 += 7;
                      v11 = v47++ >= 9;
                      if (v11)
                      {
                        goto LABEL_169;
                      }
                    }

                    [a2 hasError];
LABEL_169:
                    PBRepeatedInt32Add();
                  }
                }
              }
            }

            else if (v14 <= 1306)
            {
              if (v14 <= 1303)
              {
                if (v14 == 1302)
                {
                  if (v13 != 2)
                  {
                    v702 = 0;
                    v703 = 0;
                    v704 = 0;
                    while (1)
                    {
                      LOBYTE(v914) = 0;
                      v705 = [a2 position] + 1;
                      if (v705 >= [a2 position] && (v706 = objc_msgSend(a2, "position") + 1, v706 <= objc_msgSend(a2, "length")))
                      {
                        v707 = [a2 data];
                        [v707 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v704 |= (LOBYTE(v914) & 0x7F) << v702;
                      if ((LOBYTE(v914) & 0x80) == 0)
                      {
                        goto LABEL_2205;
                      }

                      v702 += 7;
                      v11 = v703++ >= 9;
                      if (v11)
                      {
                        goto LABEL_2206;
                      }
                    }
                  }

                  v914 = 0.0;
                  v915 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v299 = [a2 position];
                    if (v299 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v300 = 0;
                    v301 = 0;
                    v302 = 0;
                    while (1)
                    {
                      v916 = 0;
                      v303 = [a2 position] + 1;
                      if (v303 >= [a2 position] && (v304 = objc_msgSend(a2, "position") + 1, v304 <= objc_msgSend(a2, "length")))
                      {
                        v305 = [a2 data];
                        [v305 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v302 |= (v916 & 0x7F) << v300;
                      if ((v916 & 0x80) == 0)
                      {
                        break;
                      }

                      v300 += 7;
                      v11 = v301++ >= 9;
                      if (v11)
                      {
                        goto LABEL_1008;
                      }
                    }

                    [a2 hasError];
LABEL_1008:
                    PBRepeatedInt32Add();
                  }
                }

                else
                {
                  if (v13 != 2)
                  {
                    v690 = 0;
                    v691 = 0;
                    v692 = 0;
                    while (1)
                    {
                      LOBYTE(v914) = 0;
                      v693 = [a2 position] + 1;
                      if (v693 >= [a2 position] && (v694 = objc_msgSend(a2, "position") + 1, v694 <= objc_msgSend(a2, "length")))
                      {
                        v695 = [a2 data];
                        [v695 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v692 |= (LOBYTE(v914) & 0x7F) << v690;
                      if ((LOBYTE(v914) & 0x80) == 0)
                      {
                        goto LABEL_2205;
                      }

                      v690 += 7;
                      v11 = v691++ >= 9;
                      if (v11)
                      {
                        goto LABEL_2206;
                      }
                    }
                  }

                  v914 = 0.0;
                  v915 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v164 = [a2 position];
                    if (v164 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v165 = 0;
                    v166 = 0;
                    v167 = 0;
                    while (1)
                    {
                      v916 = 0;
                      v168 = [a2 position] + 1;
                      if (v168 >= [a2 position] && (v169 = objc_msgSend(a2, "position") + 1, v169 <= objc_msgSend(a2, "length")))
                      {
                        v170 = [a2 data];
                        [v170 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v167 |= (v916 & 0x7F) << v165;
                      if ((v916 & 0x80) == 0)
                      {
                        break;
                      }

                      v165 += 7;
                      v11 = v166++ >= 9;
                      if (v11)
                      {
                        goto LABEL_556;
                      }
                    }

                    [a2 hasError];
LABEL_556:
                    PBRepeatedInt32Add();
                  }
                }
              }

              else if (v14 == 1304)
              {
                if (v13 != 2)
                {
                  v660 = 0;
                  v661 = 0;
                  v662 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v663 = [a2 position] + 1;
                    if (v663 >= [a2 position] && (v664 = objc_msgSend(a2, "position") + 1, v664 <= objc_msgSend(a2, "length")))
                    {
                      v665 = [a2 data];
                      [v665 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v662 |= (LOBYTE(v914) & 0x7F) << v660;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v660 += 7;
                    v11 = v661++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v278 = [a2 position];
                  if (v278 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v279 = 0;
                  v280 = 0;
                  v281 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v282 = [a2 position] + 1;
                    if (v282 >= [a2 position] && (v283 = objc_msgSend(a2, "position") + 1, v283 <= objc_msgSend(a2, "length")))
                    {
                      v284 = [a2 data];
                      [v284 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v281 |= (v916 & 0x7F) << v279;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v279 += 7;
                    v11 = v280++ >= 9;
                    if (v11)
                    {
                      goto LABEL_955;
                    }
                  }

                  [a2 hasError];
LABEL_955:
                  PBRepeatedInt32Add();
                }
              }

              else if (v14 == 1305)
              {
                if (v13 != 2)
                {
                  v708 = 0;
                  v709 = 0;
                  v710 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v711 = [a2 position] + 1;
                    if (v711 >= [a2 position] && (v712 = objc_msgSend(a2, "position") + 1, v712 <= objc_msgSend(a2, "length")))
                    {
                      v713 = [a2 data];
                      [v713 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v710 |= (LOBYTE(v914) & 0x7F) << v708;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v708 += 7;
                    v11 = v709++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v306 = [a2 position];
                  if (v306 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v307 = 0;
                  v308 = 0;
                  v309 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v310 = [a2 position] + 1;
                    if (v310 >= [a2 position] && (v311 = objc_msgSend(a2, "position") + 1, v311 <= objc_msgSend(a2, "length")))
                    {
                      v312 = [a2 data];
                      [v312 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v309 |= (v916 & 0x7F) << v307;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v307 += 7;
                    v11 = v308++ >= 9;
                    if (v11)
                    {
                      goto LABEL_1023;
                    }
                  }

                  [a2 hasError];
LABEL_1023:
                  PBRepeatedInt32Add();
                }
              }

              else
              {
                if (v13 != 2)
                {
                  v696 = 0;
                  v697 = 0;
                  v698 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v699 = [a2 position] + 1;
                    if (v699 >= [a2 position] && (v700 = objc_msgSend(a2, "position") + 1, v700 <= objc_msgSend(a2, "length")))
                    {
                      v701 = [a2 data];
                      [v701 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v698 |= (LOBYTE(v914) & 0x7F) << v696;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v696 += 7;
                    v11 = v697++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v73 = [a2 position];
                  if (v73 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v74 = 0;
                  v75 = 0;
                  v76 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v77 = [a2 position] + 1;
                    if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
                    {
                      v79 = [a2 data];
                      [v79 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v76 |= (v916 & 0x7F) << v74;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v74 += 7;
                    v11 = v75++ >= 9;
                    if (v11)
                    {
                      goto LABEL_286;
                    }
                  }

                  [a2 hasError];
LABEL_286:
                  PBRepeatedInt32Add();
                }
              }
            }

            else if (v14 > 1401)
            {
              if (v14 == 1402)
              {
                if (v13 != 2)
                {
                  v768 = 0;
                  v769 = 0;
                  v770 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v771 = [a2 position] + 1;
                    if (v771 >= [a2 position] && (v772 = objc_msgSend(a2, "position") + 1, v772 <= objc_msgSend(a2, "length")))
                    {
                      v773 = [a2 data];
                      [v773 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v770 |= (LOBYTE(v914) & 0x7F) << v768;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v768 += 7;
                    v11 = v769++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v355 = [a2 position];
                  if (v355 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v356 = 0;
                  v357 = 0;
                  v358 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v359 = [a2 position] + 1;
                    if (v359 >= [a2 position] && (v360 = objc_msgSend(a2, "position") + 1, v360 <= objc_msgSend(a2, "length")))
                    {
                      v361 = [a2 data];
                      [v361 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v358 |= (v916 & 0x7F) << v356;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v356 += 7;
                    v11 = v357++ >= 9;
                    if (v11)
                    {
                      goto LABEL_1188;
                    }
                  }

                  [a2 hasError];
LABEL_1188:
                  PBRepeatedInt32Add();
                }
              }

              else if (v14 == 1403)
              {
                if (v13 != 2)
                {
                  v804 = 0;
                  v805 = 0;
                  v806 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v807 = [a2 position] + 1;
                    if (v807 >= [a2 position] && (v808 = objc_msgSend(a2, "position") + 1, v808 <= objc_msgSend(a2, "length")))
                    {
                      v809 = [a2 data];
                      [v809 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v806 |= (LOBYTE(v914) & 0x7F) << v804;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v804 += 7;
                    v11 = v805++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v383 = [a2 position];
                  if (v383 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v384 = 0;
                  v385 = 0;
                  v386 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v387 = [a2 position] + 1;
                    if (v387 >= [a2 position] && (v388 = objc_msgSend(a2, "position") + 1, v388 <= objc_msgSend(a2, "length")))
                    {
                      v389 = [a2 data];
                      [v389 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v386 |= (v916 & 0x7F) << v384;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v384 += 7;
                    v11 = v385++ >= 9;
                    if (v11)
                    {
                      goto LABEL_1254;
                    }
                  }

                  [a2 hasError];
LABEL_1254:
                  PBRepeatedInt32Add();
                }
              }

              else
              {
                if (v13 != 2)
                {
                  v798 = 0;
                  v799 = 0;
                  v800 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v801 = [a2 position] + 1;
                    if (v801 >= [a2 position] && (v802 = objc_msgSend(a2, "position") + 1, v802 <= objc_msgSend(a2, "length")))
                    {
                      v803 = [a2 data];
                      [v803 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v800 |= (LOBYTE(v914) & 0x7F) << v798;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v798 += 7;
                    v11 = v799++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v115 = [a2 position];
                  if (v115 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v116 = 0;
                  v117 = 0;
                  v118 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v119 = [a2 position] + 1;
                    if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
                    {
                      v121 = [a2 data];
                      [v121 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v118 |= (v916 & 0x7F) << v116;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v116 += 7;
                    v11 = v117++ >= 9;
                    if (v11)
                    {
                      goto LABEL_409;
                    }
                  }

                  [a2 hasError];
LABEL_409:
                  PBRepeatedInt32Add();
                }
              }
            }

            else
            {
              if (v14 != 1307)
              {
                if (v14 == 1308)
                {
                  v15 = PBReaderReadString();
                  if (v15)
                  {
                    [a1 addPayloadChargingConnectorType:v15];
                  }
                }

                else
                {
                  if (v14 != 1401)
                  {
                    goto LABEL_1452;
                  }

                  v15 = objc_alloc_init(_INPBDialingContact);
                  v914 = 0.0;
                  v915 = 0;
                  if (!PBReaderPlaceMark() || !_INPBDialingContactReadFrom(v15, a2))
                  {
                    goto LABEL_2213;
                  }

                  PBReaderRecallMark();
                  if (v15)
                  {
                    [a1 addPayloadDialingContact:v15];
                  }
                }

                goto LABEL_1592;
              }

              if (v13 != 2)
              {
                v762 = 0;
                v763 = 0;
                v764 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v765 = [a2 position] + 1;
                  if (v765 >= [a2 position] && (v766 = objc_msgSend(a2, "position") + 1, v766 <= objc_msgSend(a2, "length")))
                  {
                    v767 = [a2 data];
                    [v767 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v764 |= (LOBYTE(v914) & 0x7F) << v762;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    goto LABEL_2205;
                  }

                  v762 += 7;
                  v11 = v763++ >= 9;
                  if (v11)
                  {
                    goto LABEL_2206;
                  }
                }
              }

              v914 = 0.0;
              v915 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v348 = [a2 position];
                if (v348 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v349 = 0;
                v350 = 0;
                v351 = 0;
                while (1)
                {
                  v916 = 0;
                  v352 = [a2 position] + 1;
                  if (v352 >= [a2 position] && (v353 = objc_msgSend(a2, "position") + 1, v353 <= objc_msgSend(a2, "length")))
                  {
                    v354 = [a2 data];
                    [v354 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v351 |= (v916 & 0x7F) << v349;
                  if ((v916 & 0x80) == 0)
                  {
                    break;
                  }

                  v349 += 7;
                  v11 = v350++ >= 9;
                  if (v11)
                  {
                    goto LABEL_1173;
                  }
                }

                [a2 hasError];
LABEL_1173:
                PBRepeatedInt32Add();
              }
            }
          }

          else if (v14 > 1504)
          {
            if (v14 > 1601)
            {
              if (v14 > 1604)
              {
                switch(v14)
                {
                  case 0x645:
                    v15 = objc_alloc_init(_INPBPlaceList);
                    v914 = 0.0;
                    v915 = 0;
                    if (!PBReaderPlaceMark() || !_INPBPlaceListReadFrom(v15, a2))
                    {
                      goto LABEL_2213;
                    }

                    PBReaderRecallMark();
                    if (v15)
                    {
                      [a1 addPayloadPlaceList:v15];
                    }

                    break;
                  case 0x646:
                    v15 = objc_alloc_init(_INPBActivity);
                    v914 = 0.0;
                    v915 = 0;
                    if (!PBReaderPlaceMark() || !_INPBActivityReadFrom(v15, a2))
                    {
                      goto LABEL_2213;
                    }

                    PBReaderRecallMark();
                    if (v15)
                    {
                      [a1 addPayloadActivity:v15];
                    }

                    break;
                  case 0x647:
                    v15 = objc_alloc_init(_INPBActivityList);
                    v914 = 0.0;
                    v915 = 0;
                    if (!PBReaderPlaceMark() || !_INPBActivityListReadFrom(v15, a2))
                    {
                      goto LABEL_2213;
                    }

                    PBReaderRecallMark();
                    if (v15)
                    {
                      [a1 addPayloadActivityList:v15];
                    }

                    break;
                  default:
                    goto LABEL_1452;
                }
              }

              else if (v14 == 1602)
              {
                v15 = objc_alloc_init(_INPBEvent);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBEventReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadEvent:v15];
                }
              }

              else if (v14 == 1603)
              {
                v15 = objc_alloc_init(_INPBEventList);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBEventListReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadEventList:v15];
                }
              }

              else
              {
                v15 = objc_alloc_init(_INPBPlace);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBPlaceReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadPlace:v15];
                }
              }

              goto LABEL_1592;
            }

            if (v14 <= 1506)
            {
              if (v14 != 1505)
              {
                v15 = objc_alloc_init(_INPBWellnessObjectResultValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBWellnessObjectResultValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadWellnessObjectResultValue:v15];
                }

                goto LABEL_1592;
              }

              if (v13 != 2)
              {
                v618 = 0;
                v619 = 0;
                v620 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v621 = [a2 position] + 1;
                  if (v621 >= [a2 position] && (v622 = objc_msgSend(a2, "position") + 1, v622 <= objc_msgSend(a2, "length")))
                  {
                    v623 = [a2 data];
                    [v623 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v620 |= (LOBYTE(v914) & 0x7F) << v618;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    goto LABEL_2205;
                  }

                  v618 += 7;
                  v11 = v619++ >= 9;
                  if (v11)
                  {
                    goto LABEL_2206;
                  }
                }
              }

              v914 = 0.0;
              v915 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v243 = [a2 position];
                if (v243 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v244 = 0;
                v245 = 0;
                v246 = 0;
                while (1)
                {
                  v916 = 0;
                  v247 = [a2 position] + 1;
                  if (v247 >= [a2 position] && (v248 = objc_msgSend(a2, "position") + 1, v248 <= objc_msgSend(a2, "length")))
                  {
                    v249 = [a2 data];
                    [v249 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v246 |= (v916 & 0x7F) << v244;
                  if ((v916 & 0x80) == 0)
                  {
                    break;
                  }

                  v244 += 7;
                  v11 = v245++ >= 9;
                  if (v11)
                  {
                    goto LABEL_872;
                  }
                }

                [a2 hasError];
LABEL_872:
                PBRepeatedInt32Add();
              }
            }

            else
            {
              switch(v14)
              {
                case 0x5E3:
                  if (v13 != 2)
                  {
                    v564 = 0;
                    v565 = 0;
                    v566 = 0;
                    while (1)
                    {
                      LOBYTE(v914) = 0;
                      v567 = [a2 position] + 1;
                      if (v567 >= [a2 position] && (v568 = objc_msgSend(a2, "position") + 1, v568 <= objc_msgSend(a2, "length")))
                      {
                        v569 = [a2 data];
                        [v569 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v566 |= (LOBYTE(v914) & 0x7F) << v564;
                      if ((LOBYTE(v914) & 0x80) == 0)
                      {
                        goto LABEL_2205;
                      }

                      v564 += 7;
                      v11 = v565++ >= 9;
                      if (v11)
                      {
                        goto LABEL_2206;
                      }
                    }
                  }

                  v914 = 0.0;
                  v915 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v208 = [a2 position];
                    if (v208 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v209 = 0;
                    v210 = 0;
                    v211 = 0;
                    while (1)
                    {
                      v916 = 0;
                      v212 = [a2 position] + 1;
                      if (v212 >= [a2 position] && (v213 = objc_msgSend(a2, "position") + 1, v213 <= objc_msgSend(a2, "length")))
                      {
                        v214 = [a2 data];
                        [v214 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v211 |= (v916 & 0x7F) << v209;
                      if ((v916 & 0x80) == 0)
                      {
                        break;
                      }

                      v209 += 7;
                      v11 = v210++ >= 9;
                      if (v11)
                      {
                        goto LABEL_777;
                      }
                    }

                    [a2 hasError];
LABEL_777:
                    PBRepeatedInt32Add();
                  }

                  break;
                case 0x5E8:
                  v15 = objc_alloc_init(_INPBCurrencyAmount);
                  v914 = 0.0;
                  v915 = 0;
                  if (!PBReaderPlaceMark() || !_INPBCurrencyAmountReadFrom(v15, a2))
                  {
                    goto LABEL_2213;
                  }

                  PBReaderRecallMark();
                  if (v15)
                  {
                    [a1 addPayloadCurrencyAmount:v15];
                  }

                  goto LABEL_1592;
                case 0x641:
                  if (v13 != 2)
                  {
                    v600 = 0;
                    v601 = 0;
                    v602 = 0;
                    while (1)
                    {
                      LOBYTE(v914) = 0;
                      v603 = [a2 position] + 1;
                      if (v603 >= [a2 position] && (v604 = objc_msgSend(a2, "position") + 1, v604 <= objc_msgSend(a2, "length")))
                      {
                        v605 = [a2 data];
                        [v605 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v602 |= (LOBYTE(v914) & 0x7F) << v600;
                      if ((LOBYTE(v914) & 0x80) == 0)
                      {
                        goto LABEL_2205;
                      }

                      v600 += 7;
                      v11 = v601++ >= 9;
                      if (v11)
                      {
                        goto LABEL_2206;
                      }
                    }
                  }

                  v914 = 0.0;
                  v915 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v52 = [a2 position];
                    if (v52 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v53 = 0;
                    v54 = 0;
                    v55 = 0;
                    while (1)
                    {
                      v916 = 0;
                      v56 = [a2 position] + 1;
                      if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
                      {
                        v58 = [a2 data];
                        [v58 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v55 |= (v916 & 0x7F) << v53;
                      if ((v916 & 0x80) == 0)
                      {
                        break;
                      }

                      v53 += 7;
                      v11 = v54++ >= 9;
                      if (v11)
                      {
                        goto LABEL_223;
                      }
                    }

                    [a2 hasError];
LABEL_223:
                    PBRepeatedInt32Add();
                  }

                  break;
                default:
                  goto LABEL_1452;
              }
            }
          }

          else if (v14 <= 1409)
          {
            if (v14 > 1406)
            {
              if (v14 == 1407)
              {
                v15 = objc_alloc_init(_INPBCallRecordFilter);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBCallRecordFilterReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadCallRecordFilter:v15];
                }
              }

              else if (v14 == 1408)
              {
                v15 = objc_alloc_init(_INPBCallRecordValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBCallRecordValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadCallRecordValue:v15];
                }
              }

              else
              {
                v15 = objc_alloc_init(_INPBCallGroup);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBCallGroupReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadCallGroup:v15];
                }
              }

              goto LABEL_1592;
            }

            if (v14 == 1405)
            {
              if (v13 != 2)
              {
                v612 = 0;
                v613 = 0;
                v614 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v615 = [a2 position] + 1;
                  if (v615 >= [a2 position] && (v616 = objc_msgSend(a2, "position") + 1, v616 <= objc_msgSend(a2, "length")))
                  {
                    v617 = [a2 data];
                    [v617 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v614 |= (LOBYTE(v914) & 0x7F) << v612;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    goto LABEL_2205;
                  }

                  v612 += 7;
                  v11 = v613++ >= 9;
                  if (v11)
                  {
                    goto LABEL_2206;
                  }
                }
              }

              v914 = 0.0;
              v915 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v236 = [a2 position];
                if (v236 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v237 = 0;
                v238 = 0;
                v239 = 0;
                while (1)
                {
                  v916 = 0;
                  v240 = [a2 position] + 1;
                  if (v240 >= [a2 position] && (v241 = objc_msgSend(a2, "position") + 1, v241 <= objc_msgSend(a2, "length")))
                  {
                    v242 = [a2 data];
                    [v242 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v239 |= (v916 & 0x7F) << v237;
                  if ((v916 & 0x80) == 0)
                  {
                    break;
                  }

                  v237 += 7;
                  v11 = v238++ >= 9;
                  if (v11)
                  {
                    goto LABEL_857;
                  }
                }

                [a2 hasError];
LABEL_857:
                PBRepeatedInt32Add();
              }
            }

            else
            {
              if (v13 != 2)
              {
                v594 = 0;
                v595 = 0;
                v596 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v597 = [a2 position] + 1;
                  if (v597 >= [a2 position] && (v598 = objc_msgSend(a2, "position") + 1, v598 <= objc_msgSend(a2, "length")))
                  {
                    v599 = [a2 data];
                    [v599 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v596 |= (LOBYTE(v914) & 0x7F) << v594;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    goto LABEL_2205;
                  }

                  v594 += 7;
                  v11 = v595++ >= 9;
                  if (v11)
                  {
                    goto LABEL_2206;
                  }
                }
              }

              v914 = 0.0;
              v915 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v150 = [a2 position];
                if (v150 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v151 = 0;
                v152 = 0;
                v153 = 0;
                while (1)
                {
                  v916 = 0;
                  v154 = [a2 position] + 1;
                  if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
                  {
                    v156 = [a2 data];
                    [v156 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v153 |= (v916 & 0x7F) << v151;
                  if ((v916 & 0x80) == 0)
                  {
                    break;
                  }

                  v151 += 7;
                  v11 = v152++ >= 9;
                  if (v11)
                  {
                    goto LABEL_501;
                  }
                }

                [a2 hasError];
LABEL_501:
                PBRepeatedInt32Add();
              }
            }
          }

          else
          {
            if (v14 > 1501)
            {
              if (v14 == 1502)
              {
                v15 = objc_alloc_init(_INPBWellnessUnitType);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBWellnessUnitTypeReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadWellnessUnitType:v15];
                }
              }

              else if (v14 == 1503)
              {
                v15 = objc_alloc_init(_INPBWellnessMetadataPair);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBWellnessMetadataPairReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadWellnessMetadataPair:v15];
                }
              }

              else
              {
                v15 = objc_alloc_init(_INPBWellnessValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBWellnessValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadWellnessValue:v15];
                }
              }

              goto LABEL_1592;
            }

            if (v14 == 1410)
            {
              v15 = objc_alloc_init(_INPBCallGroupConversation);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBCallGroupConversationReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadCallGroupConversation:v15];
              }

              goto LABEL_1592;
            }

            if (v14 == 1411)
            {
              v15 = objc_alloc_init(_INPBStartCallRequestMetadata);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBStartCallRequestMetadataReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadStartCallRequestMetadata:v15];
              }

              goto LABEL_1592;
            }

            if (v14 != 1501)
            {
              goto LABEL_1452;
            }

            if (v13 != 2)
            {
              v744 = 0;
              v745 = 0;
              v746 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v747 = [a2 position] + 1;
                if (v747 >= [a2 position] && (v748 = objc_msgSend(a2, "position") + 1, v748 <= objc_msgSend(a2, "length")))
                {
                  v749 = [a2 data];
                  [v749 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v746 |= (LOBYTE(v914) & 0x7F) << v744;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v744 += 7;
                v11 = v745++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v31 = [a2 position];
              if (v31 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v32 = 0;
              v33 = 0;
              v34 = 0;
              while (1)
              {
                v916 = 0;
                v35 = [a2 position] + 1;
                if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
                {
                  v37 = [a2 data];
                  [v37 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v34 |= (v916 & 0x7F) << v32;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                v11 = v33++ >= 9;
                if (v11)
                {
                  goto LABEL_85;
                }
              }

              [a2 hasError];
LABEL_85:
              PBRepeatedInt32Add();
            }
          }
        }

        else
        {
          if (v14 <= 99)
          {
            switch(v14)
            {
              case 1:
                v16 = 0;
                v17 = 0;
                v18 = 0;
                break;
              case 2:
                v15 = objc_alloc_init(_INPBStringValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBStringValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadStringValue:v15];
                }

                goto LABEL_1592;
              case 3:
                v15 = objc_alloc_init(_INPBDoubleValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBDoubleValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadDoubleValue:v15];
                }

                goto LABEL_1592;
              case 4:
                v15 = objc_alloc_init(_INPBIntegerValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBIntegerValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadIntegerValue:v15];
                }

                goto LABEL_1592;
              case 5:
                v15 = objc_alloc_init(_INPBContactValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBContactValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadContactValue:v15];
                }

                goto LABEL_1592;
              case 6:
                v15 = objc_alloc_init(_INPBDateTimeRangeValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBDateTimeRangeValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadDateTimeRangeValue:v15];
                }

                goto LABEL_1592;
              case 7:
                v15 = objc_alloc_init(_INPBLocationValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadLocation:v15];
                }

                goto LABEL_1592;
              case 8:
                v15 = objc_alloc_init(_INPBDataString);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadDataString:v15];
                }

                goto LABEL_1592;
              case 9:
                v15 = objc_alloc_init(_INPBLongValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBLongValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadLongValue:v15];
                }

                goto LABEL_1592;
              case 10:
                v15 = objc_alloc_init(_INPBPaymentMethodValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBPaymentMethodValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadPaymentMethodValue:v15];
                }

                goto LABEL_1592;
              case 11:
                v15 = objc_alloc_init(_INPBTemperatureValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBTemperatureValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadTemperatureValue:v15];
                }

                goto LABEL_1592;
              case 12:
                v15 = objc_alloc_init(_INPBDistanceValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBDistanceValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadDistanceValue:v15];
                }

                goto LABEL_1592;
              case 13:
                v15 = objc_alloc_init(_INPBDateTime);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadDateTimeValue:v15];
                }

                goto LABEL_1592;
              case 14:
                v15 = objc_alloc_init(_INPBMassValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBMassValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadMassValue:v15];
                }

                goto LABEL_1592;
              case 15:
                v15 = objc_alloc_init(_INPBVolumeValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBVolumeValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadVolumeValue:v15];
                }

                goto LABEL_1592;
              case 16:
                v15 = objc_alloc_init(_INPBSpeedValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBSpeedValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadSpeedValue:v15];
                }

                goto LABEL_1592;
              case 17:
                v15 = objc_alloc_init(_INPBEnergyValue);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBEnergyValueReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadEnergyValue:v15];
                }

                goto LABEL_1592;
              case 50:
                v15 = objc_alloc_init(_INPBStringList);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBStringListReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadStringList:v15];
                }

                goto LABEL_1592;
              case 51:
                v15 = objc_alloc_init(_INPBDoubleList);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBDoubleListReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadDoubleList:v15];
                }

                goto LABEL_1592;
              case 52:
                v15 = objc_alloc_init(_INPBIntegerList);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBIntegerListReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadIntegerList:v15];
                }

                goto LABEL_1592;
              case 53:
                v15 = objc_alloc_init(_INPBContactList);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBContactListReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadContactList:v15];
                }

                goto LABEL_1592;
              case 54:
                v15 = objc_alloc_init(_INPBDateTimeRangeList);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBDateTimeRangeListReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadDateTimeRangeList:v15];
                }

                goto LABEL_1592;
              case 55:
                v15 = objc_alloc_init(_INPBLocationList);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBLocationListReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadLocationList:v15];
                }

                goto LABEL_1592;
              case 56:
                v15 = objc_alloc_init(_INPBDataStringList);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBDataStringListReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadDataStringList:v15];
                }

                goto LABEL_1592;
              case 57:
                v15 = objc_alloc_init(_INPBLongList);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBLongListReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadLongList:v15];
                }

                goto LABEL_1592;
              case 58:
                v15 = objc_alloc_init(_INPBPaymentMethodList);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBPaymentMethodListReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadPaymentMethodList:v15];
                }

                goto LABEL_1592;
              case 59:
                v15 = objc_alloc_init(_INPBTemperatureList);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBTemperatureListReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadTemperatureList:v15];
                }

                goto LABEL_1592;
              case 60:
                v15 = objc_alloc_init(_INPBDistanceList);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBDistanceListReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadDistanceList:v15];
                }

                goto LABEL_1592;
              default:
                goto LABEL_1452;
            }

            while (1)
            {
              LOBYTE(v914) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (LOBYTE(v914) & 0x7F) << v16;
              if ((LOBYTE(v914) & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_1623;
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

LABEL_1623:
            [a1 setType:v22];
            goto LABEL_2207;
          }

          if (v14 <= 108)
          {
            if (v14 <= 102)
            {
              if (v14 == 100)
              {
                v425 = 0;
                v426 = 0;
                v427 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v428 = [a2 position] + 1;
                  if (v428 >= [a2 position] && (v429 = objc_msgSend(a2, "position") + 1, v429 <= objc_msgSend(a2, "length")))
                  {
                    v430 = [a2 data];
                    [v430 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v427 |= (LOBYTE(v914) & 0x7F) << v425;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    break;
                  }

                  v425 += 7;
                  v11 = v426++ >= 9;
                  if (v11)
                  {
                    v431 = 0;
                    goto LABEL_1637;
                  }
                }

                v431 = (v427 != 0) & ~[a2 hasError];
LABEL_1637:
                [a1 addPayloadPrimitiveBool:v431];
              }

              else if (v14 == 101)
              {
                v418 = 0;
                v419 = 0;
                v420 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v421 = [a2 position] + 1;
                  if (v421 >= [a2 position] && (v422 = objc_msgSend(a2, "position") + 1, v422 <= objc_msgSend(a2, "length")))
                  {
                    v423 = [a2 data];
                    [v423 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v420 |= (LOBYTE(v914) & 0x7F) << v418;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    break;
                  }

                  v418 += 7;
                  v11 = v419++ >= 9;
                  if (v11)
                  {
                    v424 = 0;
                    goto LABEL_1635;
                  }
                }

                if ([a2 hasError])
                {
                  v424 = 0;
                }

                else
                {
                  v424 = v420;
                }

LABEL_1635:
                [a1 addPayloadPrimitiveInt:v424];
              }

              else
              {
                v87 = 0;
                v88 = 0;
                v89 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v90 = [a2 position] + 1;
                  if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
                  {
                    v92 = [a2 data];
                    [v92 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v89 |= (LOBYTE(v914) & 0x7F) << v87;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    break;
                  }

                  v87 += 7;
                  v11 = v88++ >= 9;
                  if (v11)
                  {
                    v93 = 0;
                    goto LABEL_1631;
                  }
                }

                if ([a2 hasError])
                {
                  v93 = 0;
                }

                else
                {
                  v93 = v89;
                }

LABEL_1631:
                [a1 addPayloadPrimitiveLong:v93];
              }

              goto LABEL_2207;
            }

            if (v14 > 106)
            {
              if (v14 == 107)
              {
                v15 = objc_alloc_init(_INPBIntent);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBIntentReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadIntent:v15];
                }
              }

              else
              {
                v15 = objc_alloc_init(_INPBModifyRelationship);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBModifyRelationshipReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadModifyRelationship:v15];
                }
              }
            }

            else
            {
              if (v14 == 103)
              {
                v914 = 0.0;
                v185 = [a2 position] + 8;
                if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 8, v186 <= objc_msgSend(a2, "length")))
                {
                  v913 = [a2 data];
                  [v913 getBytes:&v914 range:{objc_msgSend(a2, "position"), 8}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
                }

                else
                {
                  [a2 _setError];
                }

                [a1 addPayloadPrimitiveDouble:v914];
                goto LABEL_2207;
              }

              if (v14 != 104)
              {
                goto LABEL_1452;
              }

              v15 = PBReaderReadString();
              if (v15)
              {
                [a1 addPayloadPrimitiveString:v15];
              }
            }

            goto LABEL_1592;
          }

          if (v14 > 199)
          {
            if (v14 > 1001)
            {
              if (v14 == 1002)
              {
                if (v13 != 2)
                {
                  v552 = 0;
                  v553 = 0;
                  v554 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v555 = [a2 position] + 1;
                    if (v555 >= [a2 position] && (v556 = objc_msgSend(a2, "position") + 1, v556 <= objc_msgSend(a2, "length")))
                    {
                      v557 = [a2 data];
                      [v557 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v554 |= (LOBYTE(v914) & 0x7F) << v552;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v552 += 7;
                    v11 = v553++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v194 = [a2 position];
                  if (v194 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v195 = 0;
                  v196 = 0;
                  v197 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v198 = [a2 position] + 1;
                    if (v198 >= [a2 position] && (v199 = objc_msgSend(a2, "position") + 1, v199 <= objc_msgSend(a2, "length")))
                    {
                      v200 = [a2 data];
                      [v200 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v197 |= (v916 & 0x7F) << v195;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v195 += 7;
                    v11 = v196++ >= 9;
                    if (v11)
                    {
                      goto LABEL_739;
                    }
                  }

                  [a2 hasError];
LABEL_739:
                  PBRepeatedInt32Add();
                }
              }

              else
              {
                if (v13 != 2)
                {
                  v546 = 0;
                  v547 = 0;
                  v548 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v549 = [a2 position] + 1;
                    if (v549 >= [a2 position] && (v550 = objc_msgSend(a2, "position") + 1, v550 <= objc_msgSend(a2, "length")))
                    {
                      v551 = [a2 data];
                      [v551 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v548 |= (LOBYTE(v914) & 0x7F) << v546;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v546 += 7;
                    v11 = v547++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v129 = [a2 position];
                  if (v129 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v130 = 0;
                  v131 = 0;
                  v132 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v133 = [a2 position] + 1;
                    if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
                    {
                      v135 = [a2 data];
                      [v135 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v132 |= (v916 & 0x7F) << v130;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v130 += 7;
                    v11 = v131++ >= 9;
                    if (v11)
                    {
                      goto LABEL_453;
                    }
                  }

                  [a2 hasError];
LABEL_453:
                  PBRepeatedInt32Add();
                }
              }
            }

            else
            {
              if (v14 == 200)
              {
                v187 = 0;
                v188 = 0;
                v189 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v190 = [a2 position] + 1;
                  if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 1, v191 <= objc_msgSend(a2, "length")))
                  {
                    v192 = [a2 data];
                    [v192 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v189 |= (LOBYTE(v914) & 0x7F) << v187;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    break;
                  }

                  v187 += 7;
                  v11 = v188++ >= 9;
                  if (v11)
                  {
                    v193 = 0;
                    goto LABEL_1627;
                  }
                }

                if ([a2 hasError])
                {
                  v193 = 0;
                }

                else
                {
                  v193 = v189;
                }

LABEL_1627:
                [a1 addPayloadEnumeration:v193];
                goto LABEL_2207;
              }

              if (v14 != 1001)
              {
                goto LABEL_1452;
              }

              if (v13 != 2)
              {
                v534 = 0;
                v535 = 0;
                v536 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v537 = [a2 position] + 1;
                  if (v537 >= [a2 position] && (v538 = objc_msgSend(a2, "position") + 1, v538 <= objc_msgSend(a2, "length")))
                  {
                    v539 = [a2 data];
                    [v539 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v536 |= (LOBYTE(v914) & 0x7F) << v534;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    goto LABEL_2205;
                  }

                  v534 += 7;
                  v11 = v535++ >= 9;
                  if (v11)
                  {
                    goto LABEL_2206;
                  }
                }
              }

              v914 = 0.0;
              v915 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v80 = [a2 position];
                if (v80 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v81 = 0;
                v82 = 0;
                v83 = 0;
                while (1)
                {
                  v916 = 0;
                  v84 = [a2 position] + 1;
                  if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
                  {
                    v86 = [a2 data];
                    [v86 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v83 |= (v916 & 0x7F) << v81;
                  if ((v916 & 0x80) == 0)
                  {
                    break;
                  }

                  v81 += 7;
                  v11 = v82++ >= 9;
                  if (v11)
                  {
                    goto LABEL_304;
                  }
                }

                [a2 hasError];
LABEL_304:
                PBRepeatedInt32Add();
              }
            }
          }

          else
          {
            if (v14 <= 110)
            {
              if (v14 == 109)
              {
                v15 = objc_alloc_init(_INPBModifyNickname);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBModifyNicknameReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadModifyNickname:v15];
                }
              }

              else
              {
                v15 = objc_alloc_init(_INPBCalendarEvent);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBCalendarEventReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadCalendarEvent:v15];
                }
              }

              goto LABEL_1592;
            }

            if (v14 == 111)
            {
              v15 = objc_alloc_init(_INPBEventParticipant);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBEventParticipantReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadEventParticipant:v15];
              }

              goto LABEL_1592;
            }

            if (v14 != 112)
            {
              goto LABEL_1452;
            }

            if (v13 != 2)
            {
              v540 = 0;
              v541 = 0;
              v542 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v543 = [a2 position] + 1;
                if (v543 >= [a2 position] && (v544 = objc_msgSend(a2, "position") + 1, v544 <= objc_msgSend(a2, "length")))
                {
                  v545 = [a2 data];
                  [v545 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v542 |= (LOBYTE(v914) & 0x7F) << v540;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v540 += 7;
                v11 = v541++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v122 = [a2 position];
              if (v122 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v123 = 0;
              v124 = 0;
              v125 = 0;
              while (1)
              {
                v916 = 0;
                v126 = [a2 position] + 1;
                if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 1, v127 <= objc_msgSend(a2, "length")))
                {
                  v128 = [a2 data];
                  [v128 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v125 |= (v916 & 0x7F) << v123;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v123 += 7;
                v11 = v124++ >= 9;
                if (v11)
                {
                  goto LABEL_437;
                }
              }

              [a2 hasError];
LABEL_437:
              PBRepeatedInt32Add();
            }
          }
        }
      }

      else if (v14 > 2002)
      {
        if (v14 <= 2500)
        {
          if (v14 > 2006)
          {
            switch(v14)
            {
              case 2400:
                if (v13 != 2)
                {
                  v888 = 0;
                  v889 = 0;
                  v890 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v891 = [a2 position] + 1;
                    if (v891 >= [a2 position] && (v892 = objc_msgSend(a2, "position") + 1, v892 <= objc_msgSend(a2, "length")))
                    {
                      v893 = [a2 data];
                      [v893 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v890 |= (LOBYTE(v914) & 0x7F) << v888;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v888 += 7;
                    v11 = v889++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v38 = [a2 position];
                  if (v38 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_1587;
                  }

                  v39 = 0;
                  v40 = 0;
                  v41 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v42 = [a2 position] + 1;
                    if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                    {
                      v44 = [a2 data];
                      [v44 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v41 |= (v916 & 0x7F) << v39;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v39 += 7;
                    v11 = v40++ >= 9;
                    if (v11)
                    {
                      goto LABEL_107;
                    }
                  }

                  [a2 hasError];
LABEL_107:
                  PBRepeatedInt32Add();
                }

              case 2401:
                v15 = objc_alloc_init(_INPBNoteContent);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBNoteContentReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadNoteContent:v15];
                }

                goto LABEL_1592;
              case 2402:
                v15 = objc_alloc_init(_INPBTemporalEventTrigger);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBTemporalEventTriggerReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadTemporalEventTrigger:v15];
                }

                goto LABEL_1592;
              case 2403:
                v15 = objc_alloc_init(_INPBSpatialEventTrigger);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBSpatialEventTriggerReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadSpatialEventTrigger:v15];
                }

                goto LABEL_1592;
              case 2404:
                if (v13 != 2)
                {
                  v864 = 0;
                  v865 = 0;
                  v866 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v867 = [a2 position] + 1;
                    if (v867 >= [a2 position] && (v868 = objc_msgSend(a2, "position") + 1, v868 <= objc_msgSend(a2, "length")))
                    {
                      v869 = [a2 data];
                      [v869 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v866 |= (LOBYTE(v914) & 0x7F) << v864;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v864 += 7;
                    v11 = v865++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v467 = [a2 position];
                  if (v467 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_1587;
                  }

                  v468 = 0;
                  v469 = 0;
                  v470 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v471 = [a2 position] + 1;
                    if (v471 >= [a2 position] && (v472 = objc_msgSend(a2, "position") + 1, v472 <= objc_msgSend(a2, "length")))
                    {
                      v473 = [a2 data];
                      [v473 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v470 |= (v916 & 0x7F) << v468;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v468 += 7;
                    v11 = v469++ >= 9;
                    if (v11)
                    {
                      goto LABEL_1472;
                    }
                  }

                  [a2 hasError];
LABEL_1472:
                  PBRepeatedInt32Add();
                }

              case 2405:
                if (v13 != 2)
                {
                  v876 = 0;
                  v877 = 0;
                  v878 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v879 = [a2 position] + 1;
                    if (v879 >= [a2 position] && (v880 = objc_msgSend(a2, "position") + 1, v880 <= objc_msgSend(a2, "length")))
                    {
                      v881 = [a2 data];
                      [v881 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v878 |= (LOBYTE(v914) & 0x7F) << v876;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v876 += 7;
                    v11 = v877++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v481 = [a2 position];
                  if (v481 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_1587;
                  }

                  v482 = 0;
                  v483 = 0;
                  v484 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v485 = [a2 position] + 1;
                    if (v485 >= [a2 position] && (v486 = objc_msgSend(a2, "position") + 1, v486 <= objc_msgSend(a2, "length")))
                    {
                      v487 = [a2 data];
                      [v487 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v484 |= (v916 & 0x7F) << v482;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v482 += 7;
                    v11 = v483++ >= 9;
                    if (v11)
                    {
                      goto LABEL_1502;
                    }
                  }

                  [a2 hasError];
LABEL_1502:
                  PBRepeatedInt32Add();
                }

              case 2406:
              case 2413:
                goto LABEL_1452;
              case 2407:
                if (v13 != 2)
                {
                  v870 = 0;
                  v871 = 0;
                  v872 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v873 = [a2 position] + 1;
                    if (v873 >= [a2 position] && (v874 = objc_msgSend(a2, "position") + 1, v874 <= objc_msgSend(a2, "length")))
                    {
                      v875 = [a2 data];
                      [v875 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v872 |= (LOBYTE(v914) & 0x7F) << v870;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v870 += 7;
                    v11 = v871++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v474 = [a2 position];
                  if (v474 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_1587;
                  }

                  v475 = 0;
                  v476 = 0;
                  v477 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v478 = [a2 position] + 1;
                    if (v478 >= [a2 position] && (v479 = objc_msgSend(a2, "position") + 1, v479 <= objc_msgSend(a2, "length")))
                    {
                      v480 = [a2 data];
                      [v480 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v477 |= (v916 & 0x7F) << v475;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v475 += 7;
                    v11 = v476++ >= 9;
                    if (v11)
                    {
                      goto LABEL_1487;
                    }
                  }

                  [a2 hasError];
LABEL_1487:
                  PBRepeatedInt32Add();
                }

              case 2408:
                if (v13 != 2)
                {
                  v882 = 0;
                  v883 = 0;
                  v884 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v885 = [a2 position] + 1;
                    if (v885 >= [a2 position] && (v886 = objc_msgSend(a2, "position") + 1, v886 <= objc_msgSend(a2, "length")))
                    {
                      v887 = [a2 data];
                      [v887 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v884 |= (LOBYTE(v914) & 0x7F) << v882;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v882 += 7;
                    v11 = v883++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v488 = [a2 position];
                  if (v488 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_1587;
                  }

                  v489 = 0;
                  v490 = 0;
                  v491 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v492 = [a2 position] + 1;
                    if (v492 >= [a2 position] && (v493 = objc_msgSend(a2, "position") + 1, v493 <= objc_msgSend(a2, "length")))
                    {
                      v494 = [a2 data];
                      [v494 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v491 |= (v916 & 0x7F) << v489;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v489 += 7;
                    v11 = v490++ >= 9;
                    if (v11)
                    {
                      goto LABEL_1517;
                    }
                  }

                  [a2 hasError];
LABEL_1517:
                  PBRepeatedInt32Add();
                }

              case 2409:
                if (v13 != 2)
                {
                  v894 = 0;
                  v895 = 0;
                  v896 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v897 = [a2 position] + 1;
                    if (v897 >= [a2 position] && (v898 = objc_msgSend(a2, "position") + 1, v898 <= objc_msgSend(a2, "length")))
                    {
                      v899 = [a2 data];
                      [v899 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v896 |= (LOBYTE(v914) & 0x7F) << v894;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v894 += 7;
                    v11 = v895++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v495 = [a2 position];
                  if (v495 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_1587;
                  }

                  v496 = 0;
                  v497 = 0;
                  v498 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v499 = [a2 position] + 1;
                    if (v499 >= [a2 position] && (v500 = objc_msgSend(a2, "position") + 1, v500 <= objc_msgSend(a2, "length")))
                    {
                      v501 = [a2 data];
                      [v501 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v498 |= (v916 & 0x7F) << v496;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v496 += 7;
                    v11 = v497++ >= 9;
                    if (v11)
                    {
                      goto LABEL_1548;
                    }
                  }

                  [a2 hasError];
LABEL_1548:
                  PBRepeatedInt32Add();
                }

              case 2410:
                v15 = objc_alloc_init(_INPBTaskList);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBTaskListReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadTaskList:v15];
                }

                goto LABEL_1592;
              case 2411:
                v15 = objc_alloc_init(_INPBTask);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBTaskReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadTask:v15];
                }

                goto LABEL_1592;
              case 2412:
                v15 = objc_alloc_init(_INPBNote);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBNoteReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadNote:v15];
                }

                goto LABEL_1592;
              case 2414:
                v15 = objc_alloc_init(_INPBContactEventTrigger);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBContactEventTriggerReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadContactEventTrigger:v15];
                }

                goto LABEL_1592;
              case 2415:
                if (v13 != 2)
                {
                  v900 = 0;
                  v901 = 0;
                  v902 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v903 = [a2 position] + 1;
                    if (v903 >= [a2 position] && (v904 = objc_msgSend(a2, "position") + 1, v904 <= objc_msgSend(a2, "length")))
                    {
                      v905 = [a2 data];
                      [v905 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v902 |= (LOBYTE(v914) & 0x7F) << v900;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v900 += 7;
                    v11 = v901++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v502 = [a2 position];
                  if (v502 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_1587;
                  }

                  v503 = 0;
                  v504 = 0;
                  v505 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v506 = [a2 position] + 1;
                    if (v506 >= [a2 position] && (v507 = objc_msgSend(a2, "position") + 1, v507 <= objc_msgSend(a2, "length")))
                    {
                      v508 = [a2 data];
                      [v508 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v505 |= (v916 & 0x7F) << v503;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v503 += 7;
                    v11 = v504++ >= 9;
                    if (v11)
                    {
                      goto LABEL_1571;
                    }
                  }

                  [a2 hasError];
LABEL_1571:
                  PBRepeatedInt32Add();
                }

              case 2416:
                if (v13 != 2)
                {
                  v906 = 0;
                  v907 = 0;
                  v908 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v909 = [a2 position] + 1;
                    if (v909 >= [a2 position] && (v910 = objc_msgSend(a2, "position") + 1, v910 <= objc_msgSend(a2, "length")))
                    {
                      v911 = [a2 data];
                      [v911 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v908 |= (LOBYTE(v914) & 0x7F) << v906;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v906 += 7;
                    v11 = v907++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v509 = [a2 position];
                  if (v509 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_1587;
                  }

                  v510 = 0;
                  v511 = 0;
                  v512 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v513 = [a2 position] + 1;
                    if (v513 >= [a2 position] && (v514 = objc_msgSend(a2, "position") + 1, v514 <= objc_msgSend(a2, "length")))
                    {
                      v515 = [a2 data];
                      [v515 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v512 |= (v916 & 0x7F) << v510;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v510 += 7;
                    v11 = v511++ >= 9;
                    if (v11)
                    {
                      goto LABEL_1586;
                    }
                  }

                  [a2 hasError];
LABEL_1586:
                  PBRepeatedInt32Add();
                }

              default:
                if (v14 == 2007)
                {
                  v15 = objc_alloc_init(_INPBGetSettingResponseData);
                  v914 = 0.0;
                  v915 = 0;
                  if (!PBReaderPlaceMark() || !_INPBGetSettingResponseDataReadFrom(v15, a2))
                  {
                    goto LABEL_2213;
                  }

                  PBReaderRecallMark();
                  if (v15)
                  {
                    [a1 addPayloadGetSettingResponseData:v15];
                  }
                }

                else
                {
                  if (v14 != 2008)
                  {
                    goto LABEL_1452;
                  }

                  v15 = objc_alloc_init(_INPBDevice);
                  v914 = 0.0;
                  v915 = 0;
                  if (!PBReaderPlaceMark() || !_INPBDeviceReadFrom(v15, a2))
                  {
                    goto LABEL_2213;
                  }

                  PBReaderRecallMark();
                  if (v15)
                  {
                    [a1 addPayloadDevice:v15];
                  }
                }

                break;
            }

            goto LABEL_1592;
          }

          if (v14 > 2004)
          {
            if (v14 == 2005)
            {
              if (v13 != 2)
              {
                v528 = 0;
                v529 = 0;
                v530 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v531 = [a2 position] + 1;
                  if (v531 >= [a2 position] && (v532 = objc_msgSend(a2, "position") + 1, v532 <= objc_msgSend(a2, "length")))
                  {
                    v533 = [a2 data];
                    [v533 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v530 |= (LOBYTE(v914) & 0x7F) << v528;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    goto LABEL_2205;
                  }

                  v528 += 7;
                  v11 = v529++ >= 9;
                  if (v11)
                  {
                    goto LABEL_2206;
                  }
                }
              }

              v914 = 0.0;
              v915 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v178 = [a2 position];
                if (v178 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v179 = 0;
                v180 = 0;
                v181 = 0;
                while (1)
                {
                  v916 = 0;
                  v182 = [a2 position] + 1;
                  if (v182 >= [a2 position] && (v183 = objc_msgSend(a2, "position") + 1, v183 <= objc_msgSend(a2, "length")))
                  {
                    v184 = [a2 data];
                    [v184 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v181 |= (v916 & 0x7F) << v179;
                  if ((v916 & 0x80) == 0)
                  {
                    break;
                  }

                  v179 += 7;
                  v11 = v180++ >= 9;
                  if (v11)
                  {
                    goto LABEL_592;
                  }
                }

                [a2 hasError];
LABEL_592:
                PBRepeatedInt32Add();
              }
            }

            else
            {
              if (v13 != 2)
              {
                v516 = 0;
                v517 = 0;
                v518 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v519 = [a2 position] + 1;
                  if (v519 >= [a2 position] && (v520 = objc_msgSend(a2, "position") + 1, v520 <= objc_msgSend(a2, "length")))
                  {
                    v521 = [a2 data];
                    [v521 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v518 |= (LOBYTE(v914) & 0x7F) << v516;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    goto LABEL_2205;
                  }

                  v516 += 7;
                  v11 = v517++ >= 9;
                  if (v11)
                  {
                    goto LABEL_2206;
                  }
                }
              }

              v914 = 0.0;
              v915 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v94 = [a2 position];
                if (v94 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v95 = 0;
                v96 = 0;
                v97 = 0;
                while (1)
                {
                  v916 = 0;
                  v98 = [a2 position] + 1;
                  if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
                  {
                    v100 = [a2 data];
                    [v100 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v97 |= (v916 & 0x7F) << v95;
                  if ((v916 & 0x80) == 0)
                  {
                    break;
                  }

                  v95 += 7;
                  v11 = v96++ >= 9;
                  if (v11)
                  {
                    goto LABEL_331;
                  }
                }

                [a2 hasError];
LABEL_331:
                PBRepeatedInt32Add();
              }
            }
          }

          else
          {
            if (v14 != 2003)
            {
              v15 = objc_alloc_init(_INPBSettingMetadata);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBSettingMetadataReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadSettingMetadata:v15];
              }

              goto LABEL_1592;
            }

            if (v13 != 2)
            {
              v522 = 0;
              v523 = 0;
              v524 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v525 = [a2 position] + 1;
                if (v525 >= [a2 position] && (v526 = objc_msgSend(a2, "position") + 1, v526 <= objc_msgSend(a2, "length")))
                {
                  v527 = [a2 data];
                  [v527 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v524 |= (LOBYTE(v914) & 0x7F) << v522;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v522 += 7;
                v11 = v523++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v171 = [a2 position];
              if (v171 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v172 = 0;
              v173 = 0;
              v174 = 0;
              while (1)
              {
                v916 = 0;
                v175 = [a2 position] + 1;
                if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
                {
                  v177 = [a2 data];
                  [v177 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v174 |= (v916 & 0x7F) << v172;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v172 += 7;
                v11 = v173++ >= 9;
                if (v11)
                {
                  goto LABEL_577;
                }
              }

              [a2 hasError];
LABEL_577:
              PBRepeatedInt32Add();
            }
          }
        }

        else if (v14 > 2605)
        {
          if (v14 <= 3001)
          {
            if (v14 <= 2607)
            {
              if (v14 == 2606)
              {
                v15 = objc_alloc_init(_INPBSleepAlarmAttribute);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBSleepAlarmAttributeReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadSleepAlarmAttribute:v15];
                }

                goto LABEL_1592;
              }

              if (v13 != 2)
              {
                v576 = 0;
                v577 = 0;
                v578 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v579 = [a2 position] + 1;
                  if (v579 >= [a2 position] && (v580 = objc_msgSend(a2, "position") + 1, v580 <= objc_msgSend(a2, "length")))
                  {
                    v581 = [a2 data];
                    [v581 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v578 |= (LOBYTE(v914) & 0x7F) << v576;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    goto LABEL_2205;
                  }

                  v576 += 7;
                  v11 = v577++ >= 9;
                  if (v11)
                  {
                    goto LABEL_2206;
                  }
                }
              }

              v914 = 0.0;
              v915 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v143 = [a2 position];
                if (v143 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v144 = 0;
                v145 = 0;
                v146 = 0;
                while (1)
                {
                  v916 = 0;
                  v147 = [a2 position] + 1;
                  if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
                  {
                    v149 = [a2 data];
                    [v149 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v146 |= (v916 & 0x7F) << v144;
                  if ((v916 & 0x80) == 0)
                  {
                    break;
                  }

                  v144 += 7;
                  v11 = v145++ >= 9;
                  if (v11)
                  {
                    goto LABEL_485;
                  }
                }

                [a2 hasError];
LABEL_485:
                PBRepeatedInt32Add();
              }
            }

            else
            {
              if (v14 != 2608)
              {
                if (v14 == 2801)
                {
                  v15 = objc_alloc_init(_INPBDeviceDetail);
                  v914 = 0.0;
                  v915 = 0;
                  if (!PBReaderPlaceMark() || !_INPBDeviceDetailReadFrom(v15, a2))
                  {
                    goto LABEL_2213;
                  }

                  PBReaderRecallMark();
                  if (v15)
                  {
                    [a1 addPayloadDeviceDetail:v15];
                  }
                }

                else
                {
                  if (v14 != 3001)
                  {
                    goto LABEL_1452;
                  }

                  v15 = objc_alloc_init(_INPBCustomObject);
                  v914 = 0.0;
                  v915 = 0;
                  if (!PBReaderPlaceMark() || !_INPBCustomObjectReadFrom(v15, a2))
                  {
                    goto LABEL_2213;
                  }

                  PBReaderRecallMark();
                  if (v15)
                  {
                    [a1 addPayloadCustomObject:v15];
                  }
                }

                goto LABEL_1592;
              }

              if (v13 != 2)
              {
                v558 = 0;
                v559 = 0;
                v560 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v561 = [a2 position] + 1;
                  if (v561 >= [a2 position] && (v562 = objc_msgSend(a2, "position") + 1, v562 <= objc_msgSend(a2, "length")))
                  {
                    v563 = [a2 data];
                    [v563 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v560 |= (LOBYTE(v914) & 0x7F) << v558;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    goto LABEL_2205;
                  }

                  v558 += 7;
                  v11 = v559++ >= 9;
                  if (v11)
                  {
                    goto LABEL_2206;
                  }
                }
              }

              v914 = 0.0;
              v915 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v201 = [a2 position];
                if (v201 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v202 = 0;
                v203 = 0;
                v204 = 0;
                while (1)
                {
                  v916 = 0;
                  v205 = [a2 position] + 1;
                  if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 1, v206 <= objc_msgSend(a2, "length")))
                  {
                    v207 = [a2 data];
                    [v207 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v204 |= (v916 & 0x7F) << v202;
                  if ((v916 & 0x80) == 0)
                  {
                    break;
                  }

                  v202 += 7;
                  v11 = v203++ >= 9;
                  if (v11)
                  {
                    goto LABEL_758;
                  }
                }

                [a2 hasError];
LABEL_758:
                PBRepeatedInt32Add();
              }
            }
          }

          else
          {
            if (v14 <= 4000)
            {
              switch(v14)
              {
                case 0xBBA:
                  v15 = objc_alloc_init(_INPBURLValue);
                  v914 = 0.0;
                  v915 = 0;
                  if (!PBReaderPlaceMark() || !_INPBURLValueReadFrom(v15, a2))
                  {
                    goto LABEL_2213;
                  }

                  PBReaderRecallMark();
                  if (v15)
                  {
                    [a1 addPayloadURLValue:v15];
                  }

                  break;
                case 0xBBB:
                  v15 = objc_alloc_init(_INPBArchivedObject);
                  v914 = 0.0;
                  v915 = 0;
                  if (!PBReaderPlaceMark() || !_INPBArchivedObjectReadFrom(v15, a2))
                  {
                    goto LABEL_2213;
                  }

                  PBReaderRecallMark();
                  if (v15)
                  {
                    [a1 addPayloadArchivedObject:v15];
                  }

                  break;
                case 0xBBC:
                  v15 = objc_alloc_init(_INPBFile);
                  v914 = 0.0;
                  v915 = 0;
                  if (!PBReaderPlaceMark() || !_INPBFileReadFrom(v15, a2))
                  {
                    goto LABEL_2213;
                  }

                  PBReaderRecallMark();
                  if (v15)
                  {
                    [a1 addPayloadFile:v15];
                  }

                  break;
                default:
                  goto LABEL_1452;
              }

              goto LABEL_1592;
            }

            switch(v14)
            {
              case 0xFA1:
                v15 = objc_alloc_init(_INPBAnnouncement);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBAnnouncementReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadAnnouncement:v15];
                }

                goto LABEL_1592;
              case 0xFA2:
                if (v13 != 2)
                {
                  v756 = 0;
                  v757 = 0;
                  v758 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v759 = [a2 position] + 1;
                    if (v759 >= [a2 position] && (v760 = objc_msgSend(a2, "position") + 1, v760 <= objc_msgSend(a2, "length")))
                    {
                      v761 = [a2 data];
                      [v761 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v758 |= (LOBYTE(v914) & 0x7F) << v756;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v756 += 7;
                    v11 = v757++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v341 = [a2 position];
                  if (v341 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v342 = 0;
                  v343 = 0;
                  v344 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v345 = [a2 position] + 1;
                    if (v345 >= [a2 position] && (v346 = objc_msgSend(a2, "position") + 1, v346 <= objc_msgSend(a2, "length")))
                    {
                      v347 = [a2 data];
                      [v347 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v344 |= (v916 & 0x7F) << v342;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v342 += 7;
                    v11 = v343++ >= 9;
                    if (v11)
                    {
                      goto LABEL_1142;
                    }
                  }

                  [a2 hasError];
LABEL_1142:
                  PBRepeatedInt32Add();
                }

                break;
              case 0xFA3:
                if (v13 != 2)
                {
                  v726 = 0;
                  v727 = 0;
                  v728 = 0;
                  while (1)
                  {
                    LOBYTE(v914) = 0;
                    v729 = [a2 position] + 1;
                    if (v729 >= [a2 position] && (v730 = objc_msgSend(a2, "position") + 1, v730 <= objc_msgSend(a2, "length")))
                    {
                      v731 = [a2 data];
                      [v731 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v728 |= (LOBYTE(v914) & 0x7F) << v726;
                    if ((LOBYTE(v914) & 0x80) == 0)
                    {
                      goto LABEL_2205;
                    }

                    v726 += 7;
                    v11 = v727++ >= 9;
                    if (v11)
                    {
                      goto LABEL_2206;
                    }
                  }
                }

                v914 = 0.0;
                v915 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v101 = [a2 position];
                  if (v101 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v102 = 0;
                  v103 = 0;
                  v104 = 0;
                  while (1)
                  {
                    v916 = 0;
                    v105 = [a2 position] + 1;
                    if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
                    {
                      v107 = [a2 data];
                      [v107 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v104 |= (v916 & 0x7F) << v102;
                    if ((v916 & 0x80) == 0)
                    {
                      break;
                    }

                    v102 += 7;
                    v11 = v103++ >= 9;
                    if (v11)
                    {
                      goto LABEL_355;
                    }
                  }

                  [a2 hasError];
LABEL_355:
                  PBRepeatedInt32Add();
                }

                break;
              default:
                goto LABEL_1452;
            }
          }
        }

        else if (v14 <= 2572)
        {
          if (v14 <= 2502)
          {
            if (v14 == 2501)
            {
              v15 = objc_alloc_init(_INPBTimer);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBTimerReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadTimer:v15];
              }

              goto LABEL_1592;
            }

            if (v13 != 2)
            {
              v570 = 0;
              v571 = 0;
              v572 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v573 = [a2 position] + 1;
                if (v573 >= [a2 position] && (v574 = objc_msgSend(a2, "position") + 1, v574 <= objc_msgSend(a2, "length")))
                {
                  v575 = [a2 data];
                  [v575 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v572 |= (LOBYTE(v914) & 0x7F) << v570;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v570 += 7;
                v11 = v571++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v136 = [a2 position];
              if (v136 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v137 = 0;
              v138 = 0;
              v139 = 0;
              while (1)
              {
                v916 = 0;
                v140 = [a2 position] + 1;
                if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
                {
                  v142 = [a2 data];
                  [v142 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v139 |= (v916 & 0x7F) << v137;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v137 += 7;
                v11 = v138++ >= 9;
                if (v11)
                {
                  goto LABEL_469;
                }
              }

              [a2 hasError];
LABEL_469:
              PBRepeatedInt32Add();
            }
          }

          else
          {
            if (v14 == 2503)
            {
              v15 = objc_alloc_init(_INPBVoiceCommandDeviceInformation);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBVoiceCommandDeviceInformationReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadVoiceCommandDeviceInformation:v15];
              }

              goto LABEL_1592;
            }

            if (v14 != 2504)
            {
              if (v14 != 2508)
              {
                goto LABEL_1452;
              }

              v15 = objc_alloc_init(_INPBIntentExecutionResult);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBIntentExecutionResultReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadIntentExecutionResult:v15];
              }

              goto LABEL_1592;
            }

            if (v13 != 2)
            {
              v606 = 0;
              v607 = 0;
              v608 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v609 = [a2 position] + 1;
                if (v609 >= [a2 position] && (v610 = objc_msgSend(a2, "position") + 1, v610 <= objc_msgSend(a2, "length")))
                {
                  v611 = [a2 data];
                  [v611 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v608 |= (LOBYTE(v914) & 0x7F) << v606;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v606 += 7;
                v11 = v607++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v229 = [a2 position];
              if (v229 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v230 = 0;
              v231 = 0;
              v232 = 0;
              while (1)
              {
                v916 = 0;
                v233 = [a2 position] + 1;
                if (v233 >= [a2 position] && (v234 = objc_msgSend(a2, "position") + 1, v234 <= objc_msgSend(a2, "length")))
                {
                  v235 = [a2 data];
                  [v235 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v232 |= (v916 & 0x7F) << v230;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v230 += 7;
                v11 = v231++ >= 9;
                if (v11)
                {
                  goto LABEL_838;
                }
              }

              [a2 hasError];
LABEL_838:
              PBRepeatedInt32Add();
            }
          }
        }

        else if (v14 > 2602)
        {
          if (v14 != 2603)
          {
            if (v14 == 2604)
            {
              v15 = objc_alloc_init(_INPBAlarm);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBAlarmReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadAlarm:v15];
              }
            }

            else
            {
              v15 = objc_alloc_init(_INPBAlarmSearch);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBAlarmSearchReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadAlarmSearch:v15];
              }
            }

            goto LABEL_1592;
          }

          if (v13 != 2)
          {
            v714 = 0;
            v715 = 0;
            v716 = 0;
            while (1)
            {
              LOBYTE(v914) = 0;
              v717 = [a2 position] + 1;
              if (v717 >= [a2 position] && (v718 = objc_msgSend(a2, "position") + 1, v718 <= objc_msgSend(a2, "length")))
              {
                v719 = [a2 data];
                [v719 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v716 |= (LOBYTE(v914) & 0x7F) << v714;
              if ((LOBYTE(v914) & 0x80) == 0)
              {
                goto LABEL_2205;
              }

              v714 += 7;
              v11 = v715++ >= 9;
              if (v11)
              {
                goto LABEL_2206;
              }
            }
          }

          v914 = 0.0;
          v915 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v313 = [a2 position];
            if (v313 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v314 = 0;
            v315 = 0;
            v316 = 0;
            while (1)
            {
              v916 = 0;
              v317 = [a2 position] + 1;
              if (v317 >= [a2 position] && (v318 = objc_msgSend(a2, "position") + 1, v318 <= objc_msgSend(a2, "length")))
              {
                v319 = [a2 data];
                [v319 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v316 |= (v916 & 0x7F) << v314;
              if ((v916 & 0x80) == 0)
              {
                break;
              }

              v314 += 7;
              v11 = v315++ >= 9;
              if (v11)
              {
                goto LABEL_1046;
              }
            }

            [a2 hasError];
LABEL_1046:
            PBRepeatedInt32Add();
          }
        }

        else
        {
          switch(v14)
          {
            case 0xA0D:
              v15 = objc_alloc_init(_INPBAppIdentifier);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBAppIdentifierReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadAppIdentifier:v15];
              }

              goto LABEL_1592;
            case 0xA29:
              if (v13 != 2)
              {
                v750 = 0;
                v751 = 0;
                v752 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v753 = [a2 position] + 1;
                  if (v753 >= [a2 position] && (v754 = objc_msgSend(a2, "position") + 1, v754 <= objc_msgSend(a2, "length")))
                  {
                    v755 = [a2 data];
                    [v755 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v752 |= (LOBYTE(v914) & 0x7F) << v750;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    goto LABEL_2205;
                  }

                  v750 += 7;
                  v11 = v751++ >= 9;
                  if (v11)
                  {
                    goto LABEL_2206;
                  }
                }
              }

              v914 = 0.0;
              v915 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v334 = [a2 position];
                if (v334 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v335 = 0;
                v336 = 0;
                v337 = 0;
                while (1)
                {
                  v916 = 0;
                  v338 = [a2 position] + 1;
                  if (v338 >= [a2 position] && (v339 = objc_msgSend(a2, "position") + 1, v339 <= objc_msgSend(a2, "length")))
                  {
                    v340 = [a2 data];
                    [v340 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v337 |= (v916 & 0x7F) << v335;
                  if ((v916 & 0x80) == 0)
                  {
                    break;
                  }

                  v335 += 7;
                  v11 = v336++ >= 9;
                  if (v11)
                  {
                    goto LABEL_1119;
                  }
                }

                [a2 hasError];
LABEL_1119:
                PBRepeatedInt32Add();
              }

              break;
            case 0xA2A:
              if (v13 != 2)
              {
                v720 = 0;
                v721 = 0;
                v722 = 0;
                while (1)
                {
                  LOBYTE(v914) = 0;
                  v723 = [a2 position] + 1;
                  if (v723 >= [a2 position] && (v724 = objc_msgSend(a2, "position") + 1, v724 <= objc_msgSend(a2, "length")))
                  {
                    v725 = [a2 data];
                    [v725 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v722 |= (LOBYTE(v914) & 0x7F) << v720;
                  if ((LOBYTE(v914) & 0x80) == 0)
                  {
                    goto LABEL_2205;
                  }

                  v720 += 7;
                  v11 = v721++ >= 9;
                  if (v11)
                  {
                    goto LABEL_2206;
                  }
                }
              }

              v914 = 0.0;
              v915 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v24 = [a2 position];
                if (v24 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v25 = 0;
                v26 = 0;
                v27 = 0;
                while (1)
                {
                  v916 = 0;
                  v28 = [a2 position] + 1;
                  if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
                  {
                    v30 = [a2 data];
                    [v30 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v27 |= (v916 & 0x7F) << v25;
                  if ((v916 & 0x80) == 0)
                  {
                    break;
                  }

                  v25 += 7;
                  v11 = v26++ >= 9;
                  if (v11)
                  {
                    goto LABEL_63;
                  }
                }

                [a2 hasError];
LABEL_63:
                PBRepeatedInt32Add();
              }

              break;
            default:
              goto LABEL_1452;
          }
        }
      }

      else if (v14 > 1900)
      {
        switch(v14)
        {
          case 1901:
            v15 = objc_alloc_init(_INPBMediaItemValue);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBMediaItemValueReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadMediaItemValue:v15];
            }

            goto LABEL_1592;
          case 1902:
            if (v13 != 2)
            {
              v840 = 0;
              v841 = 0;
              v842 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v843 = [a2 position] + 1;
                if (v843 >= [a2 position] && (v844 = objc_msgSend(a2, "position") + 1, v844 <= objc_msgSend(a2, "length")))
                {
                  v845 = [a2 data];
                  [v845 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v842 |= (LOBYTE(v914) & 0x7F) << v840;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v840 += 7;
                v11 = v841++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v439 = [a2 position];
              if (v439 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_1587;
              }

              v440 = 0;
              v441 = 0;
              v442 = 0;
              while (1)
              {
                v916 = 0;
                v443 = [a2 position] + 1;
                if (v443 >= [a2 position] && (v444 = objc_msgSend(a2, "position") + 1, v444 <= objc_msgSend(a2, "length")))
                {
                  v445 = [a2 data];
                  [v445 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v442 |= (v916 & 0x7F) << v440;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v440 += 7;
                v11 = v441++ >= 9;
                if (v11)
                {
                  goto LABEL_1386;
                }
              }

              [a2 hasError];
LABEL_1386:
              PBRepeatedInt32Add();
            }

          case 1903:
            if (v13 != 2)
            {
              v822 = 0;
              v823 = 0;
              v824 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v825 = [a2 position] + 1;
                if (v825 >= [a2 position] && (v826 = objc_msgSend(a2, "position") + 1, v826 <= objc_msgSend(a2, "length")))
                {
                  v827 = [a2 data];
                  [v827 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v824 |= (LOBYTE(v914) & 0x7F) << v822;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v822 += 7;
                v11 = v823++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v404 = [a2 position];
              if (v404 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_1587;
              }

              v405 = 0;
              v406 = 0;
              v407 = 0;
              while (1)
              {
                v916 = 0;
                v408 = [a2 position] + 1;
                if (v408 >= [a2 position] && (v409 = objc_msgSend(a2, "position") + 1, v409 <= objc_msgSend(a2, "length")))
                {
                  v410 = [a2 data];
                  [v410 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v407 |= (v916 & 0x7F) << v405;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v405 += 7;
                v11 = v406++ >= 9;
                if (v11)
                {
                  goto LABEL_1315;
                }
              }

              [a2 hasError];
LABEL_1315:
              PBRepeatedInt32Add();
            }

          case 1904:
            v15 = objc_alloc_init(_INPBMediaDestination);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBMediaDestinationReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadMediaDestination:v15];
            }

            goto LABEL_1592;
          case 1905:
            if (v13 != 2)
            {
              v816 = 0;
              v817 = 0;
              v818 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v819 = [a2 position] + 1;
                if (v819 >= [a2 position] && (v820 = objc_msgSend(a2, "position") + 1, v820 <= objc_msgSend(a2, "length")))
                {
                  v821 = [a2 data];
                  [v821 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v818 |= (LOBYTE(v914) & 0x7F) << v816;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v816 += 7;
                v11 = v817++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v397 = [a2 position];
              if (v397 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_1587;
              }

              v398 = 0;
              v399 = 0;
              v400 = 0;
              while (1)
              {
                v916 = 0;
                v401 = [a2 position] + 1;
                if (v401 >= [a2 position] && (v402 = objc_msgSend(a2, "position") + 1, v402 <= objc_msgSend(a2, "length")))
                {
                  v403 = [a2 data];
                  [v403 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v400 |= (v916 & 0x7F) << v398;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v398 += 7;
                v11 = v399++ >= 9;
                if (v11)
                {
                  goto LABEL_1292;
                }
              }

              [a2 hasError];
LABEL_1292:
              PBRepeatedInt32Add();
            }

          case 1906:
            v15 = objc_alloc_init(_INPBMediaSearch);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBMediaSearchReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadMediaSearch:v15];
            }

            goto LABEL_1592;
          case 1907:
            v15 = objc_alloc_init(_INPBMediaItemGroup);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBMediaItemGroupReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadMediaItemGroup:v15];
            }

            goto LABEL_1592;
          case 1908:
            if (v13 != 2)
            {
              v834 = 0;
              v835 = 0;
              v836 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v837 = [a2 position] + 1;
                if (v837 >= [a2 position] && (v838 = objc_msgSend(a2, "position") + 1, v838 <= objc_msgSend(a2, "length")))
                {
                  v839 = [a2 data];
                  [v839 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v836 |= (LOBYTE(v914) & 0x7F) << v834;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v834 += 7;
                v11 = v835++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v432 = [a2 position];
              if (v432 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_1587;
              }

              v433 = 0;
              v434 = 0;
              v435 = 0;
              while (1)
              {
                v916 = 0;
                v436 = [a2 position] + 1;
                if (v436 >= [a2 position] && (v437 = objc_msgSend(a2, "position") + 1, v437 <= objc_msgSend(a2, "length")))
                {
                  v438 = [a2 data];
                  [v438 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v435 |= (v916 & 0x7F) << v433;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v433 += 7;
                v11 = v434++ >= 9;
                if (v11)
                {
                  goto LABEL_1371;
                }
              }

              [a2 hasError];
LABEL_1371:
              PBRepeatedInt32Add();
            }

          case 1909:
            v15 = objc_alloc_init(_INPBPrivatePlayMediaIntentData);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBPrivatePlayMediaIntentDataReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadPrivatePlayMediaIntentData:v15];
            }

            goto LABEL_1592;
          case 1910:
            v15 = objc_alloc_init(_INPBPrivateAddMediaIntentData);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBPrivateAddMediaIntentDataReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadPrivateAddMediaIntentData:v15];
            }

            goto LABEL_1592;
          case 1911:
            v15 = objc_alloc_init(_INPBPrivateUpdateMediaAffinityIntentData);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBPrivateUpdateMediaAffinityIntentDataReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadPrivateUpdateMediaAffinityIntentData:v15];
            }

            goto LABEL_1592;
          case 1912:
            v15 = objc_alloc_init(_INPBPrivateSearchForMediaIntentData);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBPrivateSearchForMediaIntentDataReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadPrivateSearchForMediaIntentData:v15];
            }

            goto LABEL_1592;
          case 1913:
            v15 = objc_alloc_init(_INPBBillPayeeValue);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBBillPayeeValueReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadBillPayeeValue:v15];
            }

            goto LABEL_1592;
          case 1914:
            v15 = objc_alloc_init(_INPBFinancialAccountValue);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBFinancialAccountValueReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadFinancialAccountValue:v15];
            }

            goto LABEL_1592;
          case 1915:
            v15 = objc_alloc_init(_INPBPaymentAmountValue);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBPaymentAmountValueReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadPaymentAmountValue:v15];
            }

            goto LABEL_1592;
          case 1916:
            v15 = objc_alloc_init(_INPBBillDetailsValue);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBBillDetailsValueReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadBillDetailsValue:v15];
            }

            goto LABEL_1592;
          case 1917:
            if (v13 != 2)
            {
              v810 = 0;
              v811 = 0;
              v812 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v813 = [a2 position] + 1;
                if (v813 >= [a2 position] && (v814 = objc_msgSend(a2, "position") + 1, v814 <= objc_msgSend(a2, "length")))
                {
                  v815 = [a2 data];
                  [v815 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v812 |= (LOBYTE(v914) & 0x7F) << v810;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v810 += 7;
                v11 = v811++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v390 = [a2 position];
              if (v390 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_1587;
              }

              v391 = 0;
              v392 = 0;
              v393 = 0;
              while (1)
              {
                v916 = 0;
                v394 = [a2 position] + 1;
                if (v394 >= [a2 position] && (v395 = objc_msgSend(a2, "position") + 1, v395 <= objc_msgSend(a2, "length")))
                {
                  v396 = [a2 data];
                  [v396 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v393 |= (v916 & 0x7F) << v391;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v391 += 7;
                v11 = v392++ >= 9;
                if (v11)
                {
                  goto LABEL_1269;
                }
              }

              [a2 hasError];
LABEL_1269:
              PBRepeatedInt32Add();
            }

          case 1918:
            if (v13 != 2)
            {
              v846 = 0;
              v847 = 0;
              v848 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v849 = [a2 position] + 1;
                if (v849 >= [a2 position] && (v850 = objc_msgSend(a2, "position") + 1, v850 <= objc_msgSend(a2, "length")))
                {
                  v851 = [a2 data];
                  [v851 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v848 |= (LOBYTE(v914) & 0x7F) << v846;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v846 += 7;
                v11 = v847++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v446 = [a2 position];
              if (v446 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_1587;
              }

              v447 = 0;
              v448 = 0;
              v449 = 0;
              while (1)
              {
                v916 = 0;
                v450 = [a2 position] + 1;
                if (v450 >= [a2 position] && (v451 = objc_msgSend(a2, "position") + 1, v451 <= objc_msgSend(a2, "length")))
                {
                  v452 = [a2 data];
                  [v452 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v449 |= (v916 & 0x7F) << v447;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v447 += 7;
                v11 = v448++ >= 9;
                if (v11)
                {
                  goto LABEL_1401;
                }
              }

              [a2 hasError];
LABEL_1401:
              PBRepeatedInt32Add();
            }

          case 1919:
            if (v13 != 2)
            {
              v852 = 0;
              v853 = 0;
              v854 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v855 = [a2 position] + 1;
                if (v855 >= [a2 position] && (v856 = objc_msgSend(a2, "position") + 1, v856 <= objc_msgSend(a2, "length")))
                {
                  v857 = [a2 data];
                  [v857 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v854 |= (LOBYTE(v914) & 0x7F) << v852;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v852 += 7;
                v11 = v853++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v453 = [a2 position];
              if (v453 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_1587;
              }

              v454 = 0;
              v455 = 0;
              v456 = 0;
              while (1)
              {
                v916 = 0;
                v457 = [a2 position] + 1;
                if (v457 >= [a2 position] && (v458 = objc_msgSend(a2, "position") + 1, v458 <= objc_msgSend(a2, "length")))
                {
                  v459 = [a2 data];
                  [v459 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v456 |= (v916 & 0x7F) << v454;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v454 += 7;
                v11 = v455++ >= 9;
                if (v11)
                {
                  goto LABEL_1428;
                }
              }

              [a2 hasError];
LABEL_1428:
              PBRepeatedInt32Add();
            }

          case 1920:
            if (v13 != 2)
            {
              v858 = 0;
              v859 = 0;
              v860 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v861 = [a2 position] + 1;
                if (v861 >= [a2 position] && (v862 = objc_msgSend(a2, "position") + 1, v862 <= objc_msgSend(a2, "length")))
                {
                  v863 = [a2 data];
                  [v863 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v860 |= (LOBYTE(v914) & 0x7F) << v858;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v858 += 7;
                v11 = v859++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v460 = [a2 position];
              if (v460 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_1587;
              }

              v461 = 0;
              v462 = 0;
              v463 = 0;
              while (1)
              {
                v916 = 0;
                v464 = [a2 position] + 1;
                if (v464 >= [a2 position] && (v465 = objc_msgSend(a2, "position") + 1, v465 <= objc_msgSend(a2, "length")))
                {
                  v466 = [a2 data];
                  [v466 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v463 |= (v916 & 0x7F) << v461;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v461 += 7;
                v11 = v462++ >= 9;
                if (v11)
                {
                  goto LABEL_1451;
                }
              }

              [a2 hasError];
LABEL_1451:
              PBRepeatedInt32Add();
            }

          default:
            if (v14 != 2001)
            {
              if (v14 != 2002)
              {
                goto LABEL_1452;
              }

              v15 = objc_alloc_init(_INPBNumericSettingValue);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBNumericSettingValueReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadNumericSettingValue:v15];
              }

              goto LABEL_1592;
            }

            if (v13 != 2)
            {
              v828 = 0;
              v829 = 0;
              v830 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v831 = [a2 position] + 1;
                if (v831 >= [a2 position] && (v832 = objc_msgSend(a2, "position") + 1, v832 <= objc_msgSend(a2, "length")))
                {
                  v833 = [a2 data];
                  [v833 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v830 |= (LOBYTE(v914) & 0x7F) << v828;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v828 += 7;
                v11 = v829++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v411 = [a2 position];
              if (v411 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v412 = 0;
              v413 = 0;
              v414 = 0;
              while (1)
              {
                v916 = 0;
                v415 = [a2 position] + 1;
                if (v415 >= [a2 position] && (v416 = objc_msgSend(a2, "position") + 1, v416 <= objc_msgSend(a2, "length")))
                {
                  v417 = [a2 data];
                  [v417 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v414 |= (v916 & 0x7F) << v412;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v412 += 7;
                v11 = v413++ >= 9;
                if (v11)
                {
                  goto LABEL_1330;
                }
              }

              [a2 hasError];
LABEL_1330:
              PBRepeatedInt32Add();
            }

            break;
        }
      }

      else if (v14 > 1702)
      {
        if (v14 <= 1802)
        {
          if (v14 <= 1799)
          {
            if (v14 == 1703)
            {
              v15 = objc_alloc_init(_INPBSendMessageAttachment);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBSendMessageAttachmentReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadSendMessageAttachment:v15];
              }

              goto LABEL_1592;
            }

            if (v14 != 1704)
            {
LABEL_1452:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_2207;
            }

            if (v13 != 2)
            {
              v666 = 0;
              v667 = 0;
              v668 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v669 = [a2 position] + 1;
                if (v669 >= [a2 position] && (v670 = objc_msgSend(a2, "position") + 1, v670 <= objc_msgSend(a2, "length")))
                {
                  v671 = [a2 data];
                  [v671 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v668 |= (LOBYTE(v914) & 0x7F) << v666;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v666 += 7;
                v11 = v667++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v157 = [a2 position];
              if (v157 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v158 = 0;
              v159 = 0;
              v160 = 0;
              while (1)
              {
                v916 = 0;
                v161 = [a2 position] + 1;
                if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
                {
                  v163 = [a2 data];
                  [v163 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v160 |= (v916 & 0x7F) << v158;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v158 += 7;
                v11 = v159++ >= 9;
                if (v11)
                {
                  goto LABEL_540;
                }
              }

              [a2 hasError];
LABEL_540:
              PBRepeatedInt32Add();
            }
          }

          else if (v14 == 1800)
          {
            if (v13 != 2)
            {
              v588 = 0;
              v589 = 0;
              v590 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v591 = [a2 position] + 1;
                if (v591 >= [a2 position] && (v592 = objc_msgSend(a2, "position") + 1, v592 <= objc_msgSend(a2, "length")))
                {
                  v593 = [a2 data];
                  [v593 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v590 |= (LOBYTE(v914) & 0x7F) << v588;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v588 += 7;
                v11 = v589++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v222 = [a2 position];
              if (v222 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v223 = 0;
              v224 = 0;
              v225 = 0;
              while (1)
              {
                v916 = 0;
                v226 = [a2 position] + 1;
                if (v226 >= [a2 position] && (v227 = objc_msgSend(a2, "position") + 1, v227 <= objc_msgSend(a2, "length")))
                {
                  v228 = [a2 data];
                  [v228 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v225 |= (v916 & 0x7F) << v223;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v223 += 7;
                v11 = v224++ >= 9;
                if (v11)
                {
                  goto LABEL_815;
                }
              }

              [a2 hasError];
LABEL_815:
              PBRepeatedInt32Add();
            }
          }

          else
          {
            if (v14 != 1801)
            {
              v15 = objc_alloc_init(_INPBHomeEntity);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBHomeEntityReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadHomeEntity:v15];
              }

              goto LABEL_1592;
            }

            if (v13 != 2)
            {
              v684 = 0;
              v685 = 0;
              v686 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v687 = [a2 position] + 1;
                if (v687 >= [a2 position] && (v688 = objc_msgSend(a2, "position") + 1, v688 <= objc_msgSend(a2, "length")))
                {
                  v689 = [a2 data];
                  [v689 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v686 |= (LOBYTE(v914) & 0x7F) << v684;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v684 += 7;
                v11 = v685++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v292 = [a2 position];
              if (v292 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v293 = 0;
              v294 = 0;
              v295 = 0;
              while (1)
              {
                v916 = 0;
                v296 = [a2 position] + 1;
                if (v296 >= [a2 position] && (v297 = objc_msgSend(a2, "position") + 1, v297 <= objc_msgSend(a2, "length")))
                {
                  v298 = [a2 data];
                  [v298 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v295 |= (v916 & 0x7F) << v293;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v293 += 7;
                v11 = v294++ >= 9;
                if (v11)
                {
                  goto LABEL_993;
                }
              }

              [a2 hasError];
LABEL_993:
              PBRepeatedInt32Add();
            }
          }
        }

        else
        {
          if (v14 > 1805)
          {
            switch(v14)
            {
              case 0x70E:
                v15 = objc_alloc_init(_INPBHomeAttribute);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBHomeAttributeReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadHomeAttribute:v15];
                }

                break;
              case 0x70F:
                v15 = objc_alloc_init(_INPBHomeFilter);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBHomeFilterReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadHomeFilter:v15];
                }

                break;
              case 0x710:
                v15 = objc_alloc_init(_INPBHomeUserTask);
                v914 = 0.0;
                v915 = 0;
                if (!PBReaderPlaceMark() || !_INPBHomeUserTaskReadFrom(v15, a2))
                {
                  goto LABEL_2213;
                }

                PBReaderRecallMark();
                if (v15)
                {
                  [a1 addPayloadHomeUserTask:v15];
                }

                break;
              default:
                goto LABEL_1452;
            }

            goto LABEL_1592;
          }

          if (v14 == 1803)
          {
            if (v13 != 2)
            {
              v732 = 0;
              v733 = 0;
              v734 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v735 = [a2 position] + 1;
                if (v735 >= [a2 position] && (v736 = objc_msgSend(a2, "position") + 1, v736 <= objc_msgSend(a2, "length")))
                {
                  v737 = [a2 data];
                  [v737 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v734 |= (LOBYTE(v914) & 0x7F) << v732;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v732 += 7;
                v11 = v733++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v320 = [a2 position];
              if (v320 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v321 = 0;
              v322 = 0;
              v323 = 0;
              while (1)
              {
                v916 = 0;
                v324 = [a2 position] + 1;
                if (v324 >= [a2 position] && (v325 = objc_msgSend(a2, "position") + 1, v325 <= objc_msgSend(a2, "length")))
                {
                  v326 = [a2 data];
                  [v326 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v323 |= (v916 & 0x7F) << v321;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v321 += 7;
                v11 = v322++ >= 9;
                if (v11)
                {
                  goto LABEL_1085;
                }
              }

              [a2 hasError];
LABEL_1085:
              PBRepeatedInt32Add();
            }
          }

          else
          {
            if (v14 != 1804)
            {
              v15 = objc_alloc_init(_INPBHomeAttributeValue);
              v914 = 0.0;
              v915 = 0;
              if (!PBReaderPlaceMark() || !_INPBHomeAttributeValueReadFrom(v15, a2))
              {
                goto LABEL_2213;
              }

              PBReaderRecallMark();
              if (v15)
              {
                [a1 addPayloadHomeAttributeValue:v15];
              }

              goto LABEL_1592;
            }

            if (v13 != 2)
            {
              v786 = 0;
              v787 = 0;
              v788 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v789 = [a2 position] + 1;
                if (v789 >= [a2 position] && (v790 = objc_msgSend(a2, "position") + 1, v790 <= objc_msgSend(a2, "length")))
                {
                  v791 = [a2 data];
                  [v791 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v788 |= (LOBYTE(v914) & 0x7F) << v786;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v786 += 7;
                v11 = v787++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v369 = [a2 position];
              if (v369 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v370 = 0;
              v371 = 0;
              v372 = 0;
              while (1)
              {
                v916 = 0;
                v373 = [a2 position] + 1;
                if (v373 >= [a2 position] && (v374 = objc_msgSend(a2, "position") + 1, v374 <= objc_msgSend(a2, "length")))
                {
                  v375 = [a2 data];
                  [v375 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v372 |= (v916 & 0x7F) << v370;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v370 += 7;
                v11 = v371++ >= 9;
                if (v11)
                {
                  goto LABEL_1218;
                }
              }

              [a2 hasError];
LABEL_1218:
              PBRepeatedInt32Add();
            }
          }
        }
      }

      else if (v14 <= 1651)
      {
        if (v14 <= 1609)
        {
          if (v14 == 1608)
          {
            v15 = objc_alloc_init(_INPBGeographicalFeature);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBGeographicalFeatureReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadGeographicalFeature:v15];
            }
          }

          else
          {
            if (v14 != 1609)
            {
              goto LABEL_1452;
            }

            v15 = objc_alloc_init(_INPBGeographicalFeatureList);
            v914 = 0.0;
            v915 = 0;
            if (!PBReaderPlaceMark() || !_INPBGeographicalFeatureListReadFrom(v15, a2))
            {
              goto LABEL_2213;
            }

            PBReaderRecallMark();
            if (v15)
            {
              [a1 addPayloadGeographicalFeatureList:v15];
            }
          }

          goto LABEL_1592;
        }

        switch(v14)
        {
          case 0x64A:
            if (v13 != 2)
            {
              v582 = 0;
              v583 = 0;
              v584 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v585 = [a2 position] + 1;
                if (v585 >= [a2 position] && (v586 = objc_msgSend(a2, "position") + 1, v586 <= objc_msgSend(a2, "length")))
                {
                  v587 = [a2 data];
                  [v587 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v584 |= (LOBYTE(v914) & 0x7F) << v582;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v582 += 7;
                v11 = v583++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v215 = [a2 position];
              if (v215 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v216 = 0;
              v217 = 0;
              v218 = 0;
              while (1)
              {
                v916 = 0;
                v219 = [a2 position] + 1;
                if (v219 >= [a2 position] && (v220 = objc_msgSend(a2, "position") + 1, v220 <= objc_msgSend(a2, "length")))
                {
                  v221 = [a2 data];
                  [v221 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v218 |= (v916 & 0x7F) << v216;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v216 += 7;
                v11 = v217++ >= 9;
                if (v11)
                {
                  goto LABEL_800;
                }
              }

              [a2 hasError];
LABEL_800:
              PBRepeatedInt32Add();
            }

            break;
          case 0x672:
            if (v13 != 2)
            {
              v678 = 0;
              v679 = 0;
              v680 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v681 = [a2 position] + 1;
                if (v681 >= [a2 position] && (v682 = objc_msgSend(a2, "position") + 1, v682 <= objc_msgSend(a2, "length")))
                {
                  v683 = [a2 data];
                  [v683 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v680 |= (LOBYTE(v914) & 0x7F) << v678;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v678 += 7;
                v11 = v679++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v285 = [a2 position];
              if (v285 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v286 = 0;
              v287 = 0;
              v288 = 0;
              while (1)
              {
                v916 = 0;
                v289 = [a2 position] + 1;
                if (v289 >= [a2 position] && (v290 = objc_msgSend(a2, "position") + 1, v290 <= objc_msgSend(a2, "length")))
                {
                  v291 = [a2 data];
                  [v291 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v288 |= (v916 & 0x7F) << v286;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v286 += 7;
                v11 = v287++ >= 9;
                if (v11)
                {
                  goto LABEL_978;
                }
              }

              [a2 hasError];
LABEL_978:
              PBRepeatedInt32Add();
            }

            break;
          case 0x673:
            if (v13 != 2)
            {
              v672 = 0;
              v673 = 0;
              v674 = 0;
              while (1)
              {
                LOBYTE(v914) = 0;
                v675 = [a2 position] + 1;
                if (v675 >= [a2 position] && (v676 = objc_msgSend(a2, "position") + 1, v676 <= objc_msgSend(a2, "length")))
                {
                  v677 = [a2 data];
                  [v677 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v674 |= (LOBYTE(v914) & 0x7F) << v672;
                if ((LOBYTE(v914) & 0x80) == 0)
                {
                  goto LABEL_2205;
                }

                v672 += 7;
                v11 = v673++ >= 9;
                if (v11)
                {
                  goto LABEL_2206;
                }
              }
            }

            v914 = 0.0;
            v915 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v66 = [a2 position];
              if (v66 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v67 = 0;
              v68 = 0;
              v69 = 0;
              while (1)
              {
                v916 = 0;
                v70 = [a2 position] + 1;
                if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
                {
                  v72 = [a2 data];
                  [v72 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v69 |= (v916 & 0x7F) << v67;
                if ((v916 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                v11 = v68++ >= 9;
                if (v11)
                {
                  goto LABEL_261;
                }
              }

              [a2 hasError];
LABEL_261:
              PBRepeatedInt32Add();
            }

            break;
          default:
            goto LABEL_1452;
        }
      }

      else if (v14 > 1699)
      {
        if (v14 == 1700)
        {
          if (v13 != 2)
          {
            v738 = 0;
            v739 = 0;
            v740 = 0;
            while (1)
            {
              LOBYTE(v914) = 0;
              v741 = [a2 position] + 1;
              if (v741 >= [a2 position] && (v742 = objc_msgSend(a2, "position") + 1, v742 <= objc_msgSend(a2, "length")))
              {
                v743 = [a2 data];
                [v743 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v740 |= (LOBYTE(v914) & 0x7F) << v738;
              if ((LOBYTE(v914) & 0x80) == 0)
              {
                goto LABEL_2205;
              }

              v738 += 7;
              v11 = v739++ >= 9;
              if (v11)
              {
                goto LABEL_2206;
              }
            }
          }

          v914 = 0.0;
          v915 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v327 = [a2 position];
            if (v327 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v328 = 0;
            v329 = 0;
            v330 = 0;
            while (1)
            {
              v916 = 0;
              v331 = [a2 position] + 1;
              if (v331 >= [a2 position] && (v332 = objc_msgSend(a2, "position") + 1, v332 <= objc_msgSend(a2, "length")))
              {
                v333 = [a2 data];
                [v333 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v330 |= (v916 & 0x7F) << v328;
              if ((v916 & 0x80) == 0)
              {
                break;
              }

              v328 += 7;
              v11 = v329++ >= 9;
              if (v11)
              {
                goto LABEL_1100;
              }
            }

            [a2 hasError];
LABEL_1100:
            PBRepeatedInt32Add();
          }
        }

        else if (v14 == 1701)
        {
          if (v13 != 2)
          {
            v792 = 0;
            v793 = 0;
            v794 = 0;
            while (1)
            {
              LOBYTE(v914) = 0;
              v795 = [a2 position] + 1;
              if (v795 >= [a2 position] && (v796 = objc_msgSend(a2, "position") + 1, v796 <= objc_msgSend(a2, "length")))
              {
                v797 = [a2 data];
                [v797 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v794 |= (LOBYTE(v914) & 0x7F) << v792;
              if ((LOBYTE(v914) & 0x80) == 0)
              {
                goto LABEL_2205;
              }

              v792 += 7;
              v11 = v793++ >= 9;
              if (v11)
              {
                goto LABEL_2206;
              }
            }
          }

          v914 = 0.0;
          v915 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v376 = [a2 position];
            if (v376 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v377 = 0;
            v378 = 0;
            v379 = 0;
            while (1)
            {
              v916 = 0;
              v380 = [a2 position] + 1;
              if (v380 >= [a2 position] && (v381 = objc_msgSend(a2, "position") + 1, v381 <= objc_msgSend(a2, "length")))
              {
                v382 = [a2 data];
                [v382 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v379 |= (v916 & 0x7F) << v377;
              if ((v916 & 0x80) == 0)
              {
                break;
              }

              v377 += 7;
              v11 = v378++ >= 9;
              if (v11)
              {
                goto LABEL_1233;
              }
            }

            [a2 hasError];
LABEL_1233:
            PBRepeatedInt32Add();
          }
        }

        else
        {
          if (v13 != 2)
          {
            v774 = 0;
            v775 = 0;
            v776 = 0;
            while (1)
            {
              LOBYTE(v914) = 0;
              v777 = [a2 position] + 1;
              if (v777 >= [a2 position] && (v778 = objc_msgSend(a2, "position") + 1, v778 <= objc_msgSend(a2, "length")))
              {
                v779 = [a2 data];
                [v779 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v776 |= (LOBYTE(v914) & 0x7F) << v774;
              if ((LOBYTE(v914) & 0x80) == 0)
              {
                goto LABEL_2205;
              }

              v774 += 7;
              v11 = v775++ >= 9;
              if (v11)
              {
                goto LABEL_2206;
              }
            }
          }

          v914 = 0.0;
          v915 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v108 = [a2 position];
            if (v108 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v109 = 0;
            v110 = 0;
            v111 = 0;
            while (1)
            {
              v916 = 0;
              v112 = [a2 position] + 1;
              if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
              {
                v114 = [a2 data];
                [v114 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v111 |= (v916 & 0x7F) << v109;
              if ((v916 & 0x80) == 0)
              {
                break;
              }

              v109 += 7;
              v11 = v110++ >= 9;
              if (v11)
              {
                goto LABEL_385;
              }
            }

            [a2 hasError];
LABEL_385:
            PBRepeatedInt32Add();
          }
        }
      }

      else
      {
        if (v14 == 1652)
        {
          v15 = objc_alloc_init(_INPBWorkoutAssociatedItem);
          v914 = 0.0;
          v915 = 0;
          if (!PBReaderPlaceMark() || !_INPBWorkoutAssociatedItemReadFrom(v15, a2))
          {
            goto LABEL_2213;
          }

          PBReaderRecallMark();
          if (v15)
          {
            [a1 addPayloadWorkoutAssociatedItem:v15];
          }

LABEL_1592:

          goto LABEL_2207;
        }

        if (v14 != 1653)
        {
          if (v14 != 1654)
          {
            goto LABEL_1452;
          }

          v15 = objc_alloc_init(_INPBWorkoutCustomization);
          v914 = 0.0;
          v915 = 0;
          if (!PBReaderPlaceMark() || !_INPBWorkoutCustomizationReadFrom(v15, a2))
          {
            goto LABEL_2213;
          }

          PBReaderRecallMark();
          if (v15)
          {
            [a1 addPayloadWorkoutCustomization:v15];
          }

          goto LABEL_1592;
        }

        if (v13 != 2)
        {
          v780 = 0;
          v781 = 0;
          v782 = 0;
          while (1)
          {
            LOBYTE(v914) = 0;
            v783 = [a2 position] + 1;
            if (v783 >= [a2 position] && (v784 = objc_msgSend(a2, "position") + 1, v784 <= objc_msgSend(a2, "length")))
            {
              v785 = [a2 data];
              [v785 getBytes:&v914 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v782 |= (LOBYTE(v914) & 0x7F) << v780;
            if ((LOBYTE(v914) & 0x80) == 0)
            {
              goto LABEL_2205;
            }

            v780 += 7;
            v11 = v781++ >= 9;
            if (v11)
            {
              goto LABEL_2206;
            }
          }
        }

        v914 = 0.0;
        v915 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v362 = [a2 position];
          if (v362 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v363 = 0;
          v364 = 0;
          v365 = 0;
          while (1)
          {
            v916 = 0;
            v366 = [a2 position] + 1;
            if (v366 >= [a2 position] && (v367 = objc_msgSend(a2, "position") + 1, v367 <= objc_msgSend(a2, "length")))
            {
              v368 = [a2 data];
              [v368 getBytes:&v916 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v365 |= (v916 & 0x7F) << v363;
            if ((v916 & 0x80) == 0)
            {
              break;
            }

            v363 += 7;
            v11 = v364++ >= 9;
            if (v11)
            {
              goto LABEL_1203;
            }
          }

          [a2 hasError];
LABEL_1203:
          PBRepeatedInt32Add();
        }
      }

LABEL_1587:
      PBReaderRecallMark();
LABEL_2207:
      v912 = [a2 position];
    }

    while (v912 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}