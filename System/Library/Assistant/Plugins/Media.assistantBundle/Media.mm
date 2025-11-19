id sub_2334DA3E8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_2814EE810;
  v7 = qword_2814EE810;
  if (!qword_2814EE810)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_23350C2CC;
    v3[3] = &unk_2789DC280;
    v3[4] = &v4;
    sub_23350C2CC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2334DA4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2334DA4D4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 valueForProperty:*MEMORY[0x277CD57C8]];
  v6 = [v5 integerValue];

  if (v6)
  {
    v8 = 0x277D475B8;
  }

  else if ((v6 & 2) != 0)
  {
    v8 = 0x277D47588;
  }

  else if ((v6 & 4) != 0)
  {
    v8 = 0x277D47520;
  }

  else
  {
    if ((v6 & 0x20) == 0)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v8 = 0x277D475A0;
  }

  v7 = objc_alloc_init(*v8);
LABEL_11:
  if (a3 == 1)
  {
    v9 = sub_233502524(a1);
  }

  else
  {
    v9 = 0;
  }

  [v7 setIdentifier:v9];

  return v7;
}

id sub_2334DA5C8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 valueForProperty:*MEMORY[0x277CD57C8]];
  v6 = [v5 integerValue];

  if ((v6 & 0x402) != 0)
  {
    v7 = MEMORY[0x277D47588];
  }

  else if ((v6 & 4) != 0)
  {
    v7 = MEMORY[0x277D47520];
  }

  else if ((v6 & 0x200) != 0)
  {
    v7 = MEMORY[0x277D47530];
  }

  else
  {
    if ((v6 & 0x100) == 0)
    {
      v8 = objc_alloc_init(MEMORY[0x277D475B8]);
      v9 = [a1 valueForProperty:*MEMORY[0x277CD5750]];
      [v8 setGenre:v9];

      goto LABEL_11;
    }

    v7 = MEMORY[0x277D47568];
  }

  v8 = objc_alloc_init(v7);
LABEL_11:
  v10 = [a1 valueForProperty:*MEMORY[0x277CD56E8]];
  [v8 setArtist:v10];

  v11 = [a1 valueForProperty:*MEMORY[0x277CD5840]];
  [v8 setSortArtist:v11];

  v12 = *MEMORY[0x277CD56D0];
  v13 = [a1 valueForProperty:*MEMORY[0x277CD56D0]];
  [v8 setAlbum:v13];

  v14 = [a1 valueForProperty:*MEMORY[0x277CD5838]];
  [v8 setSortAlbum:v14];

  v15 = [a1 valueForProperty:*MEMORY[0x277CD58B8]];
  [v8 setTitle:v15];

  v16 = [a1 valueForProperty:*MEMORY[0x277CD5848]];
  [v8 setSortTitle:v16];

  [v8 setIsExplicit:{objc_msgSend(a1, "isExplicitItem")}];
  if (a3 == 1)
  {
    v17 = sub_233502524(a1);
    [v8 setIdentifier:v17];
  }

  if ((v6 & 0x1F0F) != 0)
  {
    v55 = v12;
    v56 = v6;
    v18 = [MEMORY[0x277CBEBB0] defaultTimeZone];
    v19 = [v18 name];

    v20 = objc_alloc_init(MEMORY[0x277D471B8]);
    v21 = [a1 valueForProperty:*MEMORY[0x277CD57C0]];
    [v20 setDate:v21];

    [v20 setTimeZoneId:v19];
    v22 = objc_alloc_init(MEMORY[0x277D47578]);
    [v22 setLastPlayedDate:v20];
    v23 = [a1 valueForProperty:*MEMORY[0x277CD5708]];
    [v23 doubleValue];
    [v22 setPlaybackPositionMillis:(v24 * 1000.0)];

    v25 = [a1 valueForProperty:*MEMORY[0x277CD5820]];
    [v22 setRememberPlaybackPosition:{objc_msgSend(v25, "BOOLValue")}];

    v26 = [a1 valueForProperty:*MEMORY[0x277CD57E0]];
    v27 = [v26 unsignedIntegerValue];

    v28 = 0.0;
    if (v27 >= 0x64)
    {
      v29 = 0;
      do
      {
        v30 = v27;
        v27 /= 0xAuLL;
        ++v29;
      }

      while (v30 > 0x3E7);
      v28 = v29;
    }

    [v22 setPlays:(__exp10(v28) * v27)];
    [v8 setPlaybackInfo:v22];
    v31 = [a1 valueForProperty:*MEMORY[0x277CD5720]];
    if (v31)
    {
      v32 = objc_alloc_init(MEMORY[0x277D471B8]);
      [v32 setDate:v31];
      [v32 setTimeZoneId:v19];
      [v8 setDateAdded:v32];
    }

    v33 = [a1 valueForProperty:*MEMORY[0x277CD5878]];
    if (v33)
    {
      v34 = objc_alloc_init(MEMORY[0x277D471B8]);
      [v34 setDate:v33];
      [v34 setTimeZoneId:v19];
      [v8 setDatePurchased:v34];
    }

    v35 = [a1 valueForProperty:*MEMORY[0x277CD5818]];
    if (v35)
    {
      v36 = objc_alloc_init(MEMORY[0x277D471B8]);
      [v36 setDate:v35];
      [v36 setTimeZoneId:v19];
      v37 = objc_alloc_init(MEMORY[0x277D475A8]);
      [v37 setReleaseDate:v36];
      [a1 valueForProperty:*MEMORY[0x277CD58C0]];
      v54 = v8;
      v38 = v33;
      v39 = v22;
      v40 = v31;
      v41 = v20;
      v43 = v42 = v19;
      [v37 setReleaseYear:{objc_msgSend(v43, "unsignedIntegerValue")}];

      v19 = v42;
      v20 = v41;
      v31 = v40;
      v22 = v39;
      v33 = v38;
      v8 = v54;
      [v54 setReleaseInfo:v37];
    }

    v12 = v55;
    v6 = v56;
  }

  v44 = [a1 valueForProperty:*MEMORY[0x277CD5888]];
  if (![v44 longLongValue])
  {
    v45 = [a1 valueForProperty:*MEMORY[0x277CD58A0]];

    v44 = v45;
  }

  if (v44)
  {
    v46 = [v44 stringValue];
    [v8 setAdamIdentifier:v46];
  }

  if ((v6 & 0x200) != 0)
  {
    v47 = *MEMORY[0x277CD5740];
    v48 = v8;
    v49 = [a1 valueForProperty:v47];
    [v48 setEpisodeNumber:{objc_msgSend(v49, "unsignedIntegerValue")}];

    v50 = [a1 valueForProperty:*MEMORY[0x277CD5830]];
    [v48 setSeasonNumber:{objc_msgSend(v50, "unsignedIntegerValue")}];

    v51 = [a1 valueForProperty:*MEMORY[0x277CD56D8]];
    [v48 setShowEpisodesCount:{objc_msgSend(v51, "unsignedIntegerValue")}];

    v52 = [a1 valueForProperty:v12];
    [v48 setShowName:v52];
  }

  return v8;
}

id sub_2334DAC68(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = qword_27DE0E748;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_27DE0E748, &unk_2848D43C0);
  }

  v5 = [qword_27DE0E750 objectForKey:v4];

  return v5;
}

uint64_t sub_2334DACE4()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = *MEMORY[0x277D48690];
  qword_27DE0E750 = [v0 initWithObjectsAndKeys:{*MEMORY[0x277CD56D0], *MEMORY[0x277D48690], *MEMORY[0x277CD56E8], *MEMORY[0x277D48698], *MEMORY[0x277CD5750], *MEMORY[0x277D486A8], *MEMORY[0x277CD5710], *MEMORY[0x277D486A0], *MEMORY[0x277CD58B8], *MEMORY[0x277D486B0], 0}];

  return MEMORY[0x2821F96F8]();
}

id sub_2334DADB8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = qword_27DE0E738;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_27DE0E738, &unk_2848D43A0);
  }

  v5 = [qword_27DE0E740 objectForKey:v4];

  return v5;
}

uint64_t sub_2334DAE34()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = *MEMORY[0x277CD56D0];
  qword_27DE0E740 = [v0 initWithObjectsAndKeys:{*MEMORY[0x277D48690], *MEMORY[0x277CD56D0], *MEMORY[0x277D48698], *MEMORY[0x277CD56E8], *MEMORY[0x277D486A8], *MEMORY[0x277CD5750], *MEMORY[0x277D486A0], *MEMORY[0x277CD5710], *MEMORY[0x277D486B0], *MEMORY[0x277CD58B8], 0}];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2334DAF08(void *a1)
{
  v2 = [a1 groupingType];
  v3 = 3;
  if (v2 > 4)
  {
    v4 = 2;
    if (v2 == 10)
    {
      v3 = 4;
    }

    if (v2 == 7)
    {
      v3 = 5;
    }

    v5 = v2 == 5;
    goto LABEL_9;
  }

  if (v2 != 1)
  {
    v5 = v2 == 2;
    v4 = 1;
LABEL_9:
    if (v5)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  v8 = [a1 representativeItem];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 valueForProperty:*MEMORY[0x277CD57C8]];
    v11 = [v10 integerValue];

    if ((v11 & 0x402) != 0)
    {
      v6 = 5;
    }

    else if ((v11 & 4) != 0)
    {
      v6 = 4;
    }

    else
    {
      v6 = (v11 << 54 >> 63) & 6;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

__CFString *sub_2334DAFF0(void *a1)
{
  v1 = [a1 _assistantCollectionType];
  if (v1 > 6)
  {
    v2 = off_2789DBC30;
  }

  else
  {
    v2 = off_2789DAAC8[v1];
  }

  v3 = *v2;

  return v3;
}

id sub_2334DB040(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [a1 SAMPCollectionRepresentationUsingIdentifierType:?];
  v6 = [a1 items];
  if ([v6 count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [a1 items];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) SAMPMediaItemRepresentationUsingIdentifierType:a3];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v5 setItems:v7];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

id sub_2334DB1D8(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [a1 itemsQuery];
    if (!v13)
    {
      v12 = 0;
      v9 = 0;
      v8 = 0;
      goto LABEL_21;
    }

    v14 = [a1 groupingType];
    v15 = [a1 _assistantCollectionType];
    v16 = v15;
    if (v15 <= 6 && ((0x5Fu >> v15) & 1) != 0)
    {
      v8 = objc_alloc_init(**(&unk_2789DAA90 + v15));
    }

    else
    {
      v8 = 0;
    }

    v17 = [MEMORY[0x277CD5DF0] titlePropertyForGroupingType:v14];
    if (v17)
    {
      v9 = [a1 valueForProperty:v17];
    }

    else
    {
      v18 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 134217984;
        v28 = v14;
        _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "No title property for grouping %ld", &v27, 0xCu);
      }

      v9 = 0;
    }

    v19 = [MEMORY[0x277CD5DF0] sortTitlePropertyForGroupingType:v14];
    if (v19)
    {
      v12 = [a1 valueForProperty:v19];
      if (v16)
      {
LABEL_20:

LABEL_21:
        v11 = 0;
        if (!v8)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v12 = 0;
      if (v16)
      {
        goto LABEL_20;
      }
    }

    v20 = *MEMORY[0x277CD5698];
    v21 = v8;
    v22 = [a1 valueForProperty:v20];
    [v21 setArtist:v22];

    goto LABEL_20;
  }

  v5 = [a1 valueForProperty:*MEMORY[0x277CD5918]];
  v6 = [v5 BOOLValue];

  v7 = 0x277D47538;
  if (!v6)
  {
    v7 = 0x277D47580;
  }

  v8 = objc_alloc_init(*v7);
  v9 = [a1 valueForProperty:*MEMORY[0x277CD5930]];
  v10 = [a1 valueForProperty:*MEMORY[0x277CD5928]];
  v11 = [v10 BOOLValue];

  v12 = 0;
  if (v8)
  {
LABEL_22:
    if (a3 == 1)
    {
      v23 = sub_233502524(a1);
    }

    else
    {
      v23 = 0;
    }

    [v8 setIdentifier:v23];
    [v8 setTitle:v9];
    [v8 setSortTitle:v12];
    [v8 setEditable:v11];
  }

LABEL_26:
  v24 = v8;

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_2334DB4F8(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 6;
  }

  else
  {
    v3 = [a1 itemsQuery];
    v4 = v3;
    if (v3)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = [v3 filterPredicates];
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        while (2)
        {
          v9 = 0;
          do
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v16 + 1) + 8 * v9);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (qword_27DE0E758 != -1)
              {
                dispatch_once(&qword_27DE0E758, &unk_2848D43E0);
              }

              v11 = [v10 property];
              v12 = [qword_27DE0E760 objectForKey:v11];
              if (v12)
              {
                v13 = v12;
                v2 = [v12 integerValue];

                goto LABEL_19;
              }
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v2 = 0;
LABEL_19:
    }

    else
    {
      v2 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_2334DB6D0()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD56F0];
  v4[0] = *MEMORY[0x277CD56C8];
  v4[1] = v0;
  v5[0] = &unk_2848D8B20;
  v5[1] = &unk_2848D8B38;
  v4[2] = *MEMORY[0x277CD5758];
  v5[2] = &unk_2848D8B50;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v2 = qword_27DE0E760;
  qword_27DE0E760 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

__CFString *sub_2334DB790(void *a1)
{
  v1 = [a1 valueForProperty:*MEMORY[0x277CD5918]];
  v2 = [v1 BOOLValue];

  if (v2)
  {
    v3 = @"x-sampgeniusmix";
  }

  else
  {
    v3 = @"x-sampplaylist";
  }

  return v3;
}

id sub_2334DB7F8(void *a1)
{
  v1 = [a1 metricsContext];
  v2 = [v1 dataUsingEncoding:4];

  if (v2)
  {
    v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v2 options:0 error:0];
    v4 = 0;
    if (_NSIsNSDictionary())
    {
      v5 = [v3 objectForKey:@"WHAMetrics"];
      if (_NSIsNSDictionary())
      {
        v4 = v5;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_2334DB8C4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 MPMediaGroupingForScheme];
  if (v11 == 1)
  {
    v12 = [a1 MPMediaItemQueryOnlyPlayableItems:1 withUserIdentity:v8 plugin:v9 hash:v10];
  }

  else
  {
    v13 = [MEMORY[0x277CD5DE0] persistentIDPropertyForGroupingType:v11];
    v14 = v13;
    if (v13 && ([v13 isEqualToString:*MEMORY[0x277CD57D8]] & 1) == 0)
    {
      v15 = [a1 identifier];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 path];
        v18 = [v17 lastPathComponent];
        v19 = [v18 longLongValue];

        v20 = MEMORY[0x277CD5E30];
        v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v19];
        v22 = [v20 predicateWithValue:v21 forProperty:v14];

        v23 = [MEMORY[0x277CD5E30] predicateWithValue:MEMORY[0x277CBEC38] forProperty:*MEMORY[0x277CD57A0]];
        v24 = [MEMORY[0x277CBEB98] setWithObjects:{v22, v23, 0}];
        v12 = [objc_alloc(MEMORY[0x277CD5E38]) initWithFilterPredicates:v24];
        [v12 setGroupingType:1];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

id sub_2334DBAB0(void *a1)
{
  v1 = [a1 identifier];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 path];
    v4 = [v3 lastPathComponent];
    v5 = [v4 longLongValue];

    v6 = [MEMORY[0x277CD5DE0] persistentIDPropertyForGroupingType:2];
    v7 = MEMORY[0x277CD5E30];
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
    v9 = [v7 predicateWithValue:v8 forProperty:v6];

    v10 = [MEMORY[0x277CBEB98] setWithObjects:{v9, 0}];
    v11 = [objc_alloc(MEMORY[0x277CD5E38]) initWithFilterPredicates:v10];
    [v11 setGroupingType:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_2334DBBDC(void *a1)
{
  v1 = [a1 identifier];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 scheme];
    v4 = sub_2334DBC40(v3, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2334DBC40(void *a1, int a2)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v14[0] = @"x-sampcollection-album";
  v14[1] = @"x-sampcollection-artist";
  v15[0] = &unk_2848D8B68;
  v15[1] = &unk_2848D8B80;
  v14[2] = @"x-sampcollection-genre";
  v14[3] = @"x-sampcollection-audiobook";
  v15[2] = &unk_2848D8B98;
  v15[3] = &unk_2848D8BB0;
  v14[4] = @"x-sampcollection-podcast";
  v14[5] = @"x-sampplaylist";
  v15[4] = &unk_2848D8BC8;
  v15[5] = &unk_2848D8BE0;
  v14[6] = @"x-sampgeniusmix";
  v15[6] = &unk_2848D8BE0;
  v2 = MEMORY[0x277CBEAC0];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v15 forKeys:v14 count:7];
  v12[0] = @"x-sampcollection-album";
  v12[1] = @"x-sampcollection-artist";
  v13[0] = &unk_2848D8B68;
  v13[1] = &unk_2848D8BF8;
  v12[2] = @"x-sampcollection-genre";
  v12[3] = @"x-sampcollection-audiobook";
  v13[2] = &unk_2848D8B98;
  v13[3] = &unk_2848D8BB0;
  v12[4] = @"x-sampcollection-podcast";
  v12[5] = @"x-sampplaylist";
  v13[4] = &unk_2848D8BC8;
  v13[5] = &unk_2848D8BE0;
  v12[6] = @"x-sampgeniusmix";
  v13[6] = &unk_2848D8BE0;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:7];
  v6 = v5;
  if (!a2)
  {
    v5 = v4;
  }

  v7 = [v5 objectForKey:v3];

  if (v7)
  {
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

id sub_2334DBE1C(void *a1, uint64_t a2, int a3, void *a4, void *a5, void *a6)
{
  v73 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v13 = [a1 identifier];
  v14 = [v13 scheme];
  v15 = sub_23350261C(v13);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_2334DC484;
  v53[3] = &unk_2789DAB08;
  v60 = a3;
  v16 = v14;
  v54 = v16;
  v17 = v11;
  v55 = v17;
  v18 = v12;
  v56 = v18;
  v58 = a1;
  v59 = &v61;
  v51 = v10;
  v57 = v51;
  v52 = MEMORY[0x2383A14D0](v53);
  if (v15 == 4)
  {
    v49 = [v13 scheme];

    v26 = sub_2334DBC40(v49, 1);
    v20 = [MEMORY[0x277CD5DE0] ULIDPropertyForGroupingType:v26];
    v27 = [v13 path];
    v48 = [v27 lastPathComponent];

    v50 = sub_2334DC830(v51, v20, v48, v26, a3);
    v28 = [v50 _countOfCollections];
    v62[3] = v28;
    if (v28)
    {
      v29 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v50 _countOfCollections];
        *buf = 138543874;
        v66 = v17;
        v67 = 2114;
        v68 = v18;
        v69 = 2048;
        v70 = v30;
        _os_log_impl(&dword_2334D9000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ (ulid) <%{public}@>: collections: %lu", buf, 0x20u);
      }

      v31 = [MEMORY[0x277CD5DE0] persistentIDPropertyForGroupingType:v26];
      v32 = [v50 collections];
      v33 = [v32 firstObject];

      v34 = [v33 representativeItem];
      v35 = [v34 valueForProperty:v31];
      v36 = [v35 longLongValue];

      if (!v36)
      {
        v37 = [v33 valueForProperty:v31];
        v36 = [v37 longLongValue];
      }

      v38 = [MEMORY[0x277CCABB0] numberWithLongLong:{v36, v48}];
      v25 = (v52)[2](v52, v26, v31, v38);
    }

    else
    {
      v40 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v66 = v17;
        v67 = 2114;
        v68 = v18;
        _os_log_impl(&dword_2334D9000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ (ulid) <%{public}@>: no collections", buf, 0x16u);
      }

      v41 = [a1 items];
      v25 = sub_2334DC970(v51, v41, a3);

      v42 = [v25 _countOfCollections];
      v62[3] = v42;
    }

    v16 = v49;
  }

  else if (v15 == 1)
  {
    v19 = sub_2334DBC40(v16, 0);
    v20 = [MEMORY[0x277CD5DE0] persistentIDPropertyForGroupingType:v19];
    v21 = [v13 path];
    v22 = [v21 lastPathComponent];
    v23 = [v22 longLongValue];

    v24 = [MEMORY[0x277CCABB0] numberWithLongLong:v23];
    v25 = (v52)[2](v52, v19, v20, v24);
  }

  else
  {
    v20 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v39 = [v13 host];
      *buf = 138543874;
      v66 = v17;
      v67 = 2114;
      v68 = v18;
      v69 = 2112;
      v70 = v39;
      _os_log_impl(&dword_2334D9000, v20, OS_LOG_TYPE_ERROR, "%{public}@ (query) <%{public}@>:  Unsupported identifier URL host: %@", buf, 0x20u);
    }

    v25 = 0;
  }

  v43 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = v62[3];
    v45 = [v25 _countOfItems];
    *buf = 138544130;
    v66 = v17;
    v67 = 2114;
    v68 = v18;
    v69 = 2048;
    v70 = v44;
    v71 = 2048;
    v72 = v45;
    _os_log_impl(&dword_2334D9000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ (query) <%{public}@>: collections: %lu items: %lu", buf, 0x2Au);
  }

  _Block_object_dispose(&v61, 8);
  v46 = *MEMORY[0x277D85DE8];

  return v25;
}

void sub_2334DC414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2334DC484(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ((*(a1 + 80) & 1) == 0 && (([*(a1 + 32) isEqualToString:@"x-sampgeniusmix"] & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", @"x-sampplaylist")))
  {
    v14 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v37 = 138543618;
      v38 = v15;
      v39 = 2114;
      v40 = v16;
      _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ (getquery) <%{public}@>: local playlist", &v37, 0x16u);
    }

    v17 = MEMORY[0x277CBEB98];
    v18 = MEMORY[0x277CD5E30];
    v19 = *(a1 + 56);
    v20 = [v18 predicateWithValue:v8 forProperty:v7];
    v21 = [v17 setWithObject:v20];

    v22 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:v19];

    v13 = [objc_alloc(MEMORY[0x277CD5E38]) initWithFilterPredicates:v21 library:v22];
    [v13 setGroupingType:6];

    v12 = v13;
LABEL_12:
    v23 = [v12 _countOfCollections];
    v24 = a1 + 72;
LABEL_13:
    *(*(*v24 + 8) + 24) = v23;
    goto LABEL_14;
  }

  if (a2 == 7 || !a2)
  {
    v9 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v37 = 138543618;
      v38 = v10;
      v39 = 2114;
      v40 = v11;
      _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ (getquery) <%{public}@>: local title query", &v37, 0x16u);
    }

    v12 = sub_2334DC830(*(a1 + 56), v7, v8, a2, *(a1 + 80));
    v13 = v12;
    goto LABEL_12;
  }

  v28 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v37 = 138543618;
    v38 = v29;
    v39 = 2114;
    v40 = v30;
    _os_log_impl(&dword_2334D9000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ (getquery) <%{public}@>: local query", &v37, 0x16u);
  }

  v13 = sub_2334DC830(*(a1 + 56), v7, v8, a2, *(a1 + 80));
  v24 = a1 + 72;
  *(*(*(a1 + 72) + 8) + 24) = [v13 _countOfCollections];
  if (!*(*(*(a1 + 72) + 8) + 24))
  {
    v31 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 40);
      v33 = *(a1 + 48);
      v37 = 138543618;
      v38 = v32;
      v39 = 2114;
      v40 = v33;
      _os_log_impl(&dword_2334D9000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ (getquery) <%{public}@>: no collections", &v37, 0x16u);
    }

    v34 = *(a1 + 56);
    v35 = [*(a1 + 64) items];
    v36 = sub_2334DC970(v34, v35, *(a1 + 80));

    v23 = [v36 _countOfCollections];
    v13 = v36;
    goto LABEL_13;
  }

LABEL_14:
  v25 = v13;

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

id sub_2334DC830(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = MEMORY[0x277CD5E30];
  v10 = a1;
  v11 = [v9 predicateWithValue:a3 forProperty:a2];
  if (a5)
  {
    v12 = [MEMORY[0x277CD5E30] predicateWithValue:MEMORY[0x277CBEC38] forProperty:*MEMORY[0x277CD57A0]];
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x277CBEB98] setWithObjects:{v11, v12, 0}];
  v14 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:v10];

  v15 = [objc_alloc(MEMORY[0x277CD5E38]) initWithFilterPredicates:v13 library:v14];
  [v15 setGroupingType:a4];
  if (a5)
  {
    [v15 setShouldIncludeNonLibraryEntities:1];
    [v15 setIgnoreSystemFilterPredicates:1];
  }

  return v15;
}

id sub_2334DC970(void *a1, void *a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    v11 = *MEMORY[0x277CD5828];
    v26 = *MEMORY[0x277CD57A0];
    v12 = a3 ^ 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [v14 MPMediaItemRepresentationWithUserIdentity:v5];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 valueForProperty:v11];
          v18 = [v17 BOOLValue];

          if ((v18 & 1) == 0)
          {
            v19 = [v16 valueForProperty:v26];
            v20 = [v19 BOOLValue];

            if ((v12 | v20))
            {
              [v25 addObject:v16];
            }
          }
        }

        else
        {
          v21 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v32 = v14;
            _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "Warning, could not find local item for %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v9);
  }

  if ([v25 count])
  {
    v22 = [objc_alloc(MEMORY[0x277CD5E38]) initWithEntities:v25 entityType:0];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

id sub_2334DCBE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = [a1 MPMediaItemQueryOnlyPlayableItems:0 withUserIdentity:a3 plugin:a4 hash:a5];
  v6 = [v5 collections];
  v7 = [v6 firstObject];

  return v7;
}

id sub_2334DCC54(void *a1, uint64_t a2, void *a3)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 identifier];
  v6 = [v5 scheme];
  if ([v6 isEqualToString:@"x-sampmeditem"])
  {
    v7 = sub_23350261C(v5);
    v8 = v7;
    if (v7 == 4 || v7 == 1)
    {
      v35 = v4;
      v9 = [v5 path];
      v10 = [v9 lastPathComponent];
      v11 = [v10 longLongValue];

      v12 = MEMORY[0x277CD5DC0];
      v13 = MEMORY[0x277CD5E30];
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
      if (v8 == 4)
      {
        v15 = [v13 predicateWithValue:v14 forProperty:*MEMORY[0x277CD5858]];
        v41[0] = v15;
        v16 = MEMORY[0x277CD5870];
        v17 = v41;
      }

      else
      {
        v15 = [v13 predicateWithValue:v14 forProperty:*MEMORY[0x277CD57D8]];
        v40 = v15;
        v16 = MEMORY[0x277CD58B0];
        v17 = &v40;
      }

      v20 = MEMORY[0x277CD5E30];
      v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
      v22 = [v20 predicateWithValue:v21 forProperty:*v16];
      v17[1] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      v24 = [v12 predicateMatchingPredicates:v23];

      v4 = v35;
      v25 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:v35];
      v26 = objc_alloc(MEMORY[0x277CD5E38]);
      v27 = [MEMORY[0x277CBEB98] setWithObject:v24];
      v28 = [v26 initWithFilterPredicates:v27 library:v25];

      [v28 setIgnoreSystemFilterPredicates:1];
      [v28 setShouldIncludeNonLibraryEntities:1];
      v29 = [v28 items];
      v30 = [v29 firstObject];

      if (v30)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v31 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = [v5 host];
        *buf = 136315394;
        v37 = "/Library/Caches/com.apple.xbs/Sources/MobileMusicPlayer/AssistantBundle/Categories/SAMPMediaItem_MPAdditions.m";
        v38 = 2112;
        v39 = v32;
        _os_log_impl(&dword_2334D9000, v31, OS_LOG_TYPE_ERROR, "[%s] Unsupported identifier URL host: %@", buf, 0x16u);
      }
    }

    v18 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v5;
      v19 = "Could not find item with identifier %@";
      goto LABEL_16;
    }
  }

  else
  {
    v18 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v37 = v6;
      v19 = "Unknown identifier URL scheme: %{public}@";
LABEL_16:
      _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
    }
  }

  v30 = 0;
LABEL_18:

  v33 = *MEMORY[0x277D85DE8];

  return v30;
}

void sub_2334DD274(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3)
    {
      v5 = objc_alloc(MEMORY[0x277D47208]);
      v6 = [v4 localizedDescription];
      v7 = [v5 initWithReason:v6];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277D47218]);
    }

    if (![*(*(a1 + 32) + 56) length])
    {
      v8 = [*(a1 + 32) aceId];
      v9 = sub_233505670(@"Add Media Entity To Acoustic ID History", v8);
      v10 = *(a1 + 32);
      v11 = *(v10 + 56);
      *(v10 + 56) = v9;
    }

    v12 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(a1 + 32) + 56);
      v14 = [v7 dictionary];
      v18 = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "Add Media Entity To Acoustic ID History (completion) <%{public}@>: notifying assistant %{public}@", &v18, 0x16u);
    }

    v15 = *(a1 + 40);
    v16 = [v7 dictionary];
    (*(v15 + 16))(v15, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2334DD4F0(uint64_t a1, CFDictionaryRef theDict)
{
  v5 = CFDictionaryGetValue(theDict, *MEMORY[0x277D27C50]);
  v4 = CFDictionaryGetValue(theDict, *MEMORY[0x277D27CC0]);
  [v4 longLongValue];
  (*(*(a1 + 32) + 16))();
}

void sub_2334DD78C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v8 = v5;
    if (sub_2335059A8(a3))
    {
      v6 = objc_alloc_init(MEMORY[0x277D47218]);
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"System media app reported failure adding track to wishlist."];
    }

    v7 = v6;
    (*(*(a1 + 40) + 16))();

    v5 = v8;
  }
}

void sub_2334DD974(uint64_t a1, uint64_t a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 | v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D7FC28]);
    v7 = objc_alloc(MEMORY[0x277D7FC30]);
    v8 = [MEMORY[0x277D7FCA0] activeAccount];
    v9 = [v7 initWithIdentity:v8];

    [v6 setRequestContext:v9];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", *(a1 + 40)];
    v19[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v6 setItemIdentifiers:v11];

    [v6 setPersonalizationStyle:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2334DDB60;
    v15[3] = &unk_2789DAB80;
    v16 = v5;
    v12 = *(a1 + 32);
    v17 = v9;
    v18 = v12;
    v13 = [v6 performWithResponseHandler:v15];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"User is not signed into an iTunes account."];
    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2334DDB60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!*(a1 + 32))
  {
    v10 = [v5 allItems];
    v9 = [v10 firstObject];

    if (v9)
    {
      v11 = [objc_alloc(MEMORY[0x277D7FA20]) initWithRequestContext:*(a1 + 40) platformMetadataItem:v9];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_2334DDCF4;
      v13[3] = &unk_2789DAB58;
      v14 = *(a1 + 48);
      [v11 performWithResponseHandler:v13];
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x277D47208]);
      v11 = [v12 initWithErrorCode:*MEMORY[0x277D485B8]];
      (*(*(a1 + 48) + 16))();
    }

    goto LABEL_8;
  }

  if (*(a1 + 48))
  {
    v7 = objc_alloc(MEMORY[0x277D47208]);
    v8 = [v6 localizedDescription];
    v9 = [v7 initWithReason:v8];

    (*(*(a1 + 48) + 16))();
LABEL_8:
  }
}

void sub_2334DDCF4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  if (*(a1 + 32))
  {
    if (v5)
    {
      v7 = objc_alloc(MEMORY[0x277D47208]);
      v8 = [v6 localizedDescription];
      v9 = [v7 initWithReason:v8];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277D47218]);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_2334DDFF8(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 40))
  {
    if (![*(*(a1 + 32) + 56) length])
    {
      v4 = [*(a1 + 32) aceId];
      v5 = sub_233505670(@"Add Media Entity To Wish List", v4);
      v6 = *(a1 + 32);
      v7 = *(v6 + 56);
      *(v6 + 56) = v5;
    }

    v8 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 56);
      v10 = [v3 dictionary];
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Add Media Entity To Wish List (completion) <%{public}@>: notifying assistant %{public}@", &v14, 0x16u);
    }

    v11 = *(a1 + 40);
    v12 = [v3 dictionary];
    (*(v11 + 16))(v11, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2334DE164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    MEMORY[0x2821F9670](v5, sel__addRadioTrackToWishListWithStoreID_stationHash_completion_);
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = objc_alloc(MEMORY[0x277D47208]);
    v8 = [v7 initWithErrorCode:*MEMORY[0x277D485B8]];
    (*(v6 + 16))(v6, v8);
  }
}

void sub_2334DE544(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _MPLogCategoryAssistant();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[4];
      v8 = a1[7];
      *buf = 138544130;
      v19 = @"Add Media Items To Library";
      v20 = 2114;
      v21 = v7;
      v22 = 2048;
      v23 = v8;
      v24 = 2114;
      v25 = v4;
      _os_log_impl(&dword_2334D9000, v6, OS_LOG_TYPE_ERROR, "%{public}@ (cloud) <%{public}@>: Failed adding %lld. %{public}@", buf, 0x2Au);
    }

    v9 = MEMORY[0x277CCACA8];
    v10 = [v4 localizedDescription];
    v11 = [v9 stringWithFormat:@"Failed to add store item. %@", v10];

    v12 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:v11];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[4];
      v14 = a1[7];
      *buf = 138543874;
      v19 = @"Add Media Items To Library";
      v20 = 2114;
      v21 = v13;
      v22 = 2048;
      v23 = v14;
      _os_log_impl(&dword_2334D9000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ (cloud) <%{public}@>: Added %lld.", buf, 0x20u);
    }

    v12 = objc_alloc_init(MEMORY[0x277D47218]);
  }

  (*(a1[6] + 16))();
  v15 = a1[5];
  v16 = *(v15 + 72);
  *(v15 + 72) = 0;

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2334DEA48(uint64_t a1, void *a2)
{
  if (sub_2335059A8(a2))
  {
    v4 = objc_alloc_init(MEMORY[0x277D47218]);
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"The system media app reported that adding the track to library was unsuccessful. (trackID = %@)", *(a1 + 32)];
    v4 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:v3];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2334DEAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  v6 = *(a1 + 32);
  v5(v4, a3);
}

void sub_2334DEFF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2334DF0F0;
    v7[3] = &unk_2789DB800;
    v4 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v4 _requestCompanionToAddMediaItemsForOrigin:a2 withCompletion:v7];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277D47208]);
    v6 = [v5 initWithErrorCode:*MEMORY[0x277D485B0]];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_2334DF2E4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    v5 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2334DF4F8;
    v17[3] = &unk_2789DB620;
    v17[4] = v5;
    v18 = *(a1 + 40);
    [v5 _performWithCompletion:v17];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"no user identity"];
    if (![*(*(a1 + 32) + 56) length])
    {
      v7 = [*(a1 + 32) aceId];
      v8 = sub_233505670(@"Add Media Items To Library", v7);
      v9 = *(a1 + 32);
      v10 = *(v9 + 56);
      *(v9 + 56) = v8;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(a1 + 32) + 56);
      v13 = [v6 dictionary];
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_DEFAULT, "Add Media Items To Library (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v14 = *(a1 + 40);
    v15 = [v6 dictionary];
    (*(v14 + 16))(v14, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2334DF4F8(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![*(*(a1 + 32) + 56) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Add Media Items To Library", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 56);
    v10 = [v3 dictionary];
    v14 = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Add Media Items To Library (completion) <%{public}@>: notifying assistant %{public}@", &v14, 0x16u);
  }

  v11 = *(a1 + 40);
  v12 = [v3 dictionary];
  (*(v11 + 16))(v11, v12);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2334DFF3C(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = @"Add Media Items To Playlist";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_2334D9000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ (cloud items) <%{public}@>: rewrite finished", &v7, 0x16u);
  }

  [MPAssistantAddMediaItemsToPlaylist _notifyAssistantWithError:v3 requestHash:*(a1 + 32) completion:*(a1 + 40)];
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2334E0840(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = @"Add Media Items To Playlist";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_2334D9000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ (cloud items) <%{public}@>: rewrite finished", &v7, 0x16u);
  }

  [MPAssistantAddMediaItemsToPlaylist _notifyAssistantWithError:v3 requestHash:*(a1 + 32) completion:*(a1 + 40)];
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2334E1888(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (![*(*(a1 + 32) + 56) length])
    {
      v3 = [*(a1 + 32) aceId];
      v4 = sub_233505670(@"Add Media Items To Playlist", v3);
      v5 = *(a1 + 32);
      v6 = *(v5 + 56);
      *(v5 + 56) = v4;
    }

    v7 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 56);
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (local) <%{public}@>: added items", &v16, 0xCu);
    }

    v9 = *(a1 + 40);
    v10 = objc_alloc_init(MEMORY[0x277D47218]);
    v11 = [v10 dictionary];
    (*(v9 + 16))(v9, v11);

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = *(*(a1 + 32) + 56);
    v15 = *MEMORY[0x277D85DE8];

    [MPAssistantAddMediaItemsToPlaylist _notifyAssistantWithString:@"Unable to add item to playlist" requestHash:v14 completion:v13];
  }
}

void sub_2334E1A28(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (![*(*(a1 + 32) + 56) length])
    {
      v3 = [*(a1 + 32) aceId];
      v4 = sub_233505670(@"Add Media Items To Playlist", v3);
      v5 = *(a1 + 32);
      v6 = *(v5 + 56);
      *(v5 + 56) = v4;
    }

    v7 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 56);
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (local) <%{public}@>: added items", &v16, 0xCu);
    }

    v9 = *(a1 + 40);
    v10 = objc_alloc_init(MEMORY[0x277D47218]);
    v11 = [v10 dictionary];
    (*(v9 + 16))(v9, v11);

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = *(*(a1 + 32) + 56);
    v15 = *MEMORY[0x277D85DE8];

    [MPAssistantAddMediaItemsToPlaylist _notifyAssistantWithString:@"Unable to add item to playlist" requestHash:v14 completion:v13];
  }
}

void sub_2334E2150(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2334E2358;
    v17[3] = &unk_2789DBC10;
    v5 = *(a1 + 32);
    v18 = *(a1 + 40);
    [v5 _appendToPlaylistWithCompletion:v17];
    v6 = v18;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"no user identity"];
    if (![*(*(a1 + 32) + 56) length])
    {
      v7 = [*(a1 + 32) aceId];
      v8 = sub_233505670(@"Add Media Items To Playlist", v7);
      v9 = *(a1 + 32);
      v10 = *(v9 + 56);
      *(v9 + 56) = v8;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(a1 + 32) + 56);
      v13 = [v6 dictionary];
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v14 = *(a1 + 40);
    v15 = [v6 dictionary];
    (*(v14 + 16))(v14, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2334E2AB0(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D27AB8];
  v3 = MRMediaRemoteCommandInfoCopyValueForKey();
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v5 = [v3 containsObject:v4];

  if ((v5 & 1) == 0)
  {
    if (![*(*(a1 + 32) + 80) length])
    {
      v6 = [*(a1 + 32) aceId];
      v7 = sub_233505670(@"Add Media Items To Up Next Queue", v6);
      v8 = *(a1 + 32);
      v9 = *(v8 + 80);
      *(v8 + 80) = v7;
    }

    v10 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1 + 32) + 80);
      v12 = *(a1 + 40);
      v15 = 138543874;
      v16 = v11;
      v17 = 2048;
      v18 = v12;
      v19 = 2114;
      v20 = v3;
      _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_ERROR, "Add Media Items To Up Next Queue (issupported) <%{public}@>: mode %ld not in %{public}@", &v15, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_2334E30DC(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2334E326C;
  v3[3] = &unk_2789DB788;
  v4 = *(a1 + 32);
  [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

void sub_2334E3168(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2334E31F4;
  v3[3] = &unk_2789DB788;
  v4 = *(a1 + 32);
  [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

void sub_2334E31F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 identifier];
  v4 = [v5 lastPathComponent];
  [v3 setSubscriptionAdamID:{objc_msgSend(v4, "longLongValue")}];
}

void sub_2334E326C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 identifier];
  v4 = [v5 lastPathComponent];
  [v3 setGlobalPlaylistID:v4];
}

void sub_2334E385C(uint64_t a1, const void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (![*(*(a1 + 32) + 80) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Add Media Items To Up Next Queue", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 80);
    *(v6 + 80) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v9[10];
    v11 = [v9 insertLocation];
    *buf = 138543874;
    v33 = v10;
    v34 = 2114;
    v35 = v11;
    v36 = 2114;
    v37 = a2;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (perform) <%{public}@>: mode %{public}@ to origin %{public}@", buf, 0x20u);
  }

  v12 = [*(a1 + 32) mediaCollection];
  v13 = *(a1 + 32);
  v31 = 0;
  v14 = [v13 _createPlaybackQueueWithCollection:v12 error:&v31];
  v15 = v31;
  v16 = *(a1 + 32);
  if (v14)
  {
    v17 = [v16 insertLocation];
    if (([v17 isEqualToString:*MEMORY[0x277D48578]] & 1) == 0 && (objc_msgSend(v17, "isEqualToString:", *MEMORY[0x277D48588]) & 1) == 0)
    {
      [v17 isEqualToString:*MEMORY[0x277D48580]];
    }

    [v14 createRemotePlaybackQueue];
    MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
    if (a2)
    {
      CFRetain(a2);
    }

    v29 = *(a1 + 32);
    v30 = *(a1 + 40);
    MRMediaRemoteGetSupportedCommandsForOrigin();
  }

  else
  {
    if (![v16[10] length])
    {
      v18 = [*(a1 + 32) aceId];
      v19 = sub_233505670(@"Add Media Items To Up Next Queue", v18);
      v20 = *(a1 + 32);
      v21 = *(v20 + 80);
      *(v20 + 80) = v19;
    }

    v22 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(*(a1 + 32) + 80);
      *buf = 138543618;
      v33 = v23;
      v34 = 2114;
      v35 = v15;
      _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_ERROR, "Add Media Items To Up Next Queue (perform) <%{public}@>: playback queue creation failed %{public}@", buf, 0x16u);
    }

    v24 = objc_alloc(MEMORY[0x277D47208]);
    v25 = [v24 initWithErrorCode:*MEMORY[0x277D48638]];
    v26 = *(a1 + 40);
    v27 = [v25 dictionary];
    (*(v26 + 16))(v26, v27);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2334E3BEC(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277D27830]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2334E4380;
  v6[3] = &unk_2789DACE8;
  v7 = v4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v5 = v4;
  [v5 connectToEndpoint:a2 completion:v6];
}

void sub_2334E3CC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = dispatch_queue_create("com.apple.MPAssistantAddMediaItemsToUpNextQueue", 0);
    v4 = *(a1 + 56);
    MRMediaRemoteGetActiveOrigin();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    MRAVEndpointGetMyGroupLeaderWithTimeout();
  }
}

void sub_2334E3DF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = v3;
    v6 = [a2 allKeys];
    v7 = objc_alloc_init(MEMORY[0x277D27838]);
    v8 = *(a1 + 40);
    v9 = *(v8 + 56);
    *(v8 + 56) = v7;

    v10 = *(*(a1 + 40) + 56);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2334E3F40;
    v15[3] = &unk_2789DAD60;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    [v10 discoverRemoteControlEndpointsMatchingUIDs:v6 completion:v15];
  }

  else
  {
    v11 = MEMORY[0x277D47208];
    v12 = v3;
    v6 = [[v11 alloc] initWithReason:@"UID decoding error"];
    v13 = *(a1 + 48);
    v14 = [v6 dictionary];
    (*(v13 + 16))(v13, v14);
  }
}

void sub_2334E3F40(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 count] < 2)
  {
    if ([v9 count])
    {
      v5 = *(a1 + 40);
      v6 = [v9 firstObject];
      (*(v5 + 16))(v5, v6);
      goto LABEL_7;
    }

    v3 = objc_alloc(MEMORY[0x277D47208]);
    v4 = @"No endpoints found";
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x277D47208]);
    v4 = @"Too many endpoints requested";
  }

  v6 = [v3 initWithReason:v4];
  v7 = *(a1 + 32);
  v8 = [v6 dictionary];
  (*(v7 + 16))(v7, v8);

LABEL_7:
}

void sub_2334E4030(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    if (![*(*(a1 + 32) + 80) length])
    {
      v29 = [*(a1 + 32) aceId];
      v30 = sub_233505670(@"Add Media Items To Up Next Queue", v29);
      v31 = *(a1 + 32);
      v32 = *(v31 + 80);
      *(v31 + 80) = v30;
    }

    v13 = _MPLogCategoryAssistant();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v33 = *(*(a1 + 32) + 80);
    v37 = 138543618;
    v38 = v33;
    v39 = 2114;
    v40 = a2;
    v15 = "Add Media Items To Up Next Queue (perform) <%{public}@>: group leader endpoint %{public}@";
    v16 = v13;
    v17 = 22;
    goto LABEL_17;
  }

  if ([v5 code] == 33)
  {
    v7 = [v6 domain];
    v8 = [v7 isEqualToString:*MEMORY[0x277D27AE0]];

    if (v8)
    {
      if (![*(*(a1 + 32) + 80) length])
      {
        v9 = [*(a1 + 32) aceId];
        v10 = sub_233505670(@"Add Media Items To Up Next Queue", v9);
        v11 = *(a1 + 32);
        v12 = *(v11 + 80);
        *(v11 + 80) = v10;
      }

      v13 = _MPLogCategoryAssistant();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v14 = *(*(a1 + 32) + 80);
      v37 = 138543362;
      v38 = v14;
      v15 = "Add Media Items To Up Next Queue (perform) <%{public}@>: group leader legacy";
      v16 = v13;
      v17 = 12;
LABEL_17:
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, v15, &v37, v17);
LABEL_18:

      (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v34, v35);
      goto LABEL_19;
    }
  }

  if (![*(*(a1 + 32) + 80) length])
  {
    v18 = [*(a1 + 32) aceId];
    v19 = sub_233505670(@"Add Media Items To Up Next Queue", v18);
    v20 = *(a1 + 32);
    v21 = *(v20 + 80);
    *(v20 + 80) = v19;
  }

  v22 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = *(*(a1 + 32) + 80);
    v37 = 138543618;
    v38 = v23;
    v39 = 2114;
    v40 = v6;
    _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_ERROR, "Add Media Items To Up Next Queue (perform) <%{public}@>: group leader endpoint not found %{public}@", &v37, 0x16u);
  }

  v24 = objc_alloc(MEMORY[0x277D47208]);
  v25 = [v6 localizedFailureReason];
  v26 = [v24 initWithReason:v25];

  v27 = *(a1 + 48);
  v28 = [v26 dictionary];
  (*(v27 + 16))(v27, v28);

LABEL_19:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_2334E4380(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[4];
  v15 = v5;
  if (a4)
  {
    v6 = MEMORY[0x277D47208];
    v7 = v5;
    v8 = [[v6 alloc] initWithReason:@"Failed to connect to endpoint"];
    v9 = a1[6];
    v10 = [v8 dictionary];
    (*(v9 + 16))(v9, v10);
  }

  else
  {
    v12 = a1[5];
    v13 = *(v12 + 16);
    v14 = v5;
    v13(v12, a3);
  }
}

void sub_2334E4444(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isInsertionPositionSupported:*(a1 + 64) origin:*(a1 + 48) supportedCommands:a2])
  {
    if (![*(*(a1 + 32) + 80) length])
    {
      v3 = [*(a1 + 32) aceId];
      v4 = sub_233505670(@"Add Media Items To Up Next Queue", v3);
      v5 = *(a1 + 32);
      v6 = *(v5 + 80);
      *(v5 + 80) = v4;
    }

    v7 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 80);
      v9 = *(a1 + 48);
      *buf = 138543618;
      v39 = v8;
      v40 = 2112;
      v41 = v9;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (perform) <%{public}@>: sending add request to %@", buf, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = *(*(a1 + 32) + 64);
    v37 = 0;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v37];
    v13 = v37;
    v14 = [*(*(a1 + 32) + 80) length];
    if (v13)
    {
      if (!v14)
      {
        v15 = [*(a1 + 32) aceId];
        v16 = sub_233505670(@"Add Media Items To Up Next Queue", v15);
        v17 = *(a1 + 32);
        v18 = *(v17 + 80);
        *(v17 + 80) = v16;
      }

      v19 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(*(a1 + 32) + 80);
        *buf = 138543618;
        v39 = v20;
        v40 = 2114;
        v41 = v13;
        _os_log_impl(&dword_2334D9000, v19, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (perform) <%{public}@>: could not encode user identity: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (!v14)
      {
        v23 = [*(a1 + 32) aceId];
        v24 = sub_233505670(@"Add Media Items To Up Next Queue", v23);
        v25 = *(a1 + 32);
        v26 = *(v25 + 80);
        *(v25 + 80) = v24;
      }

      v27 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(*(a1 + 32) + 80);
        *buf = 138543619;
        v39 = v28;
        v40 = 2113;
        v41 = v12;
        _os_log_impl(&dword_2334D9000, v27, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (perform) <%{public}@>: user identity set to: %{private}@", buf, 0x16u);
      }

      [v10 setObject:v12 forKey:*MEMORY[0x277D27E18]];
    }

    v29 = *(*(a1 + 32) + 72);
    if (v29)
    {
      [v10 setObject:v29 forKeyedSubscript:*MEMORY[0x277D27DA8]];
    }

    v30 = *(a1 + 64);
    v32 = *(a1 + 48);
    v31 = *(a1 + 56);
    v36 = *(a1 + 40);
    MRMediaRemoteInsertSystemAppPlaybackQueueWithOptions();
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x277D47208]);
    v10 = [v21 initWithErrorCode:*MEMORY[0x277D486E8]];
    v22 = *(a1 + 40);
    v13 = [v10 dictionary];
    (*(v22 + 16))(v22, v13);
  }

  v33 = *(a1 + 56);
  MRSystemAppPlaybackQueueDestroy();
  v34 = *(a1 + 48);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_2334E4848(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v4 = objc_alloc(MEMORY[0x277D47208]);
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"MediaRemote command failed. err = %ld", a2];
    v8 = [v4 initWithReason:v5];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D47218]);
  }

  v6 = *(a1 + 32);
  v7 = [v8 dictionary];
  (*(v6 + 16))(v6, v7);
}

void sub_2334E4B78(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    objc_storeStrong((*(a1 + 32) + 72), a3);
    v8 = *(a1 + 32);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2334E4DBC;
    v20[3] = &unk_2789DB2D8;
    v20[4] = v8;
    v21 = *(a1 + 40);
    [v8 _perform:v20];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"no user identity"];
    if (![*(*(a1 + 32) + 80) length])
    {
      v10 = [*(a1 + 32) aceId];
      v11 = sub_233505670(@"Add Media Items To Up Next Queue", v10);
      v12 = *(a1 + 32);
      v13 = *(v12 + 80);
      *(v12 + 80) = v11;
    }

    v14 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(a1 + 32) + 80);
      v16 = [v9 dictionary];
      *buf = 138543618;
      v23 = v15;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v17 = *(a1 + 40);
    v18 = [v9 dictionary];
    (*(v17 + 16))(v17, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2334E4DBC(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![*(*(a1 + 32) + 80) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Add Media Items To Up Next Queue", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 80);
    *(v6 + 80) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 80);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (completion) <%{public}@>: notifying assistant %{public}@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334E5188(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [a2 mutableCopy];
  v6 = [*(a1 + 40) groupID];
  v7 = [v6 isEqualToString:@"LOCAL_DEVICE"];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) groupID];
    v10 = [v5 allKeysForObject:v9];
    v8 = [v10 firstObject];

    if ((*(a1 + 56) & 1) == 0)
    {
      [v5 removeObjectForKey:v8];
    }
  }

  v11 = [v5 allKeys];
  v12 = [v11 count];
  v13 = [*(a1 + 40) hashedRouteUIDs];
  v14 = [v13 count];

  if (v12 == v14)
  {
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    MRAVEndpointAddOutputDevicesToGroupFromSource();
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"UID decoding error"];
    if (![*(*(a1 + 40) + 56) length])
    {
      v16 = [*(a1 + 40) aceId];
      v17 = sub_233505670(@"Add Output Devices To Group", v16);
      v18 = *(a1 + 40);
      v19 = *(v18 + 56);
      *(v18 + 56) = v17;
    }

    v20 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(*(a1 + 40) + 56);
      v22 = [v15 dictionary];
      *buf = 138543618;
      v29 = v21;
      v30 = 2114;
      v31 = v22;
      _os_log_impl(&dword_2334D9000, v20, OS_LOG_TYPE_ERROR, "Add Output Devices To Group (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v23 = *(a1 + 48);
    v24 = [v15 dictionary];
    (*(v23 + 16))(v23, v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2334E5474(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D47208]);
    v5 = [v3 localizedFailureReason];
    v6 = [v4 initWithReason:v5];

    if (![*(*(a1 + 32) + 56) length])
    {
      v7 = [*(a1 + 32) aceId];
      v8 = sub_233505670(@"Add Output Devices To Group", v7);
      v9 = *(a1 + 32);
      v10 = *(v9 + 56);
      *(v9 + 56) = v8;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1 + 32) + 56);
      v13 = [v6 dictionary];
      v24 = 138543618;
      v25 = v12;
      v26 = 2114;
      v27 = v13;
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_2334D9000, v14, v15, "Add Output Devices To Group (completion) <%{public}@>: notifying assistant %{public}@", &v24, 0x16u);
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D475D0]);
    [v6 setRouteResponse:*MEMORY[0x277D48678]];
    if (![*(*(a1 + 32) + 56) length])
    {
      v16 = [*(a1 + 32) aceId];
      v17 = sub_233505670(@"Add Output Devices To Group", v16);
      v18 = *(a1 + 32);
      v19 = *(v18 + 56);
      *(v18 + 56) = v17;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(a1 + 32) + 56);
      v13 = [v6 dictionary];
      v24 = 138543618;
      v25 = v20;
      v26 = 2114;
      v27 = v13;
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  v21 = *(a1 + 40);
  v22 = [v6 dictionary];
  (*(v21 + 16))(v21, v22);

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2334E5C54(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277D27850]);
  [v4 setOrigin:a2];
  v5 = objc_alloc_init(MEMORY[0x277D27828]);
  v6 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2334E6730;
  v11[3] = &unk_2789DBB98;
  v12 = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v7;
  v13 = v8;
  v14 = v9;
  v10 = v5;
  [v10 sendCommand:121 toDestination:v4 withOptions:v6 completion:v11];
}

void sub_2334E5D54(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277D27830]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2334E64A4;
  v8[3] = &unk_2789DAE00;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v4;
  [v7 connectToEndpoint:a2 completion:v8];
}

void sub_2334E5E28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    MRAVEndpointGetMyGroupLeaderWithTimeout();
  }
}

void sub_2334E5F04(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) hashedRouteUIDs];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2334E5FE0;
  v6[3] = &unk_2789DB418;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  [v4 resolveWithHashedRouteIdentifiers:v5 audioRoutingInfo:a2 completion:v6];
}

void sub_2334E5FE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2334E6084;
  v5[3] = &unk_2789DAEA0;
  v6 = *(a1 + 48);
  [v3 sendCommand:121 toDestination:a2 withOptions:v4 completion:v5];
}

void sub_2334E6084(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_alloc_init(MEMORY[0x277D47218]);
  if (v9)
  {
    v4 = objc_alloc(MEMORY[0x277D47208]);
    v5 = [v9 localizedFailureReason];
    v6 = [v4 initWithReason:v5];

    v3 = v6;
  }

  v7 = *(a1 + 32);
  v8 = [v3 dictionary];
  (*(v7 + 16))(v7, v8);
}

void sub_2334E6154(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    if (![*(*(a1 + 32) + 56) length])
    {
      v30 = [*(a1 + 32) aceId];
      v31 = sub_233505670(@"Create Radio Station", v30);
      v32 = *(a1 + 32);
      v33 = *(v32 + 56);
      *(v32 + 56) = v31;
    }

    v13 = _MPLogCategoryAssistant();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v34 = *(*(a1 + 32) + 56);
    v38 = 138543618;
    v39 = v34;
    v40 = 2114;
    v41 = a2;
    v15 = "Create Radio Station (perform) <%{public}@>: group leader endpoint %{public}@";
    v16 = v13;
    v17 = 22;
    goto LABEL_17;
  }

  if ([v5 code] == 33)
  {
    v7 = [v6 domain];
    v8 = [v7 isEqualToString:*MEMORY[0x277D27AE0]];

    if (v8)
    {
      if (![*(*(a1 + 32) + 56) length])
      {
        v9 = [*(a1 + 32) aceId];
        v10 = sub_233505670(@"Create Radio Station", v9);
        v11 = *(a1 + 32);
        v12 = *(v11 + 56);
        *(v11 + 56) = v10;
      }

      v13 = _MPLogCategoryAssistant();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v14 = *(*(a1 + 32) + 56);
      v38 = 138543362;
      v39 = v14;
      v15 = "Create Radio Station (perform) <%{public}@>: group leader legacy";
      v16 = v13;
      v17 = 12;
LABEL_17:
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, v15, &v38, v17);
LABEL_18:

      (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v35, v36);
      goto LABEL_19;
    }
  }

  v18 = objc_alloc(MEMORY[0x277D47208]);
  v19 = [v6 localizedFailureReason];
  v20 = [v18 initWithReason:v19];

  if (![*(*(a1 + 32) + 56) length])
  {
    v21 = [*(a1 + 32) aceId];
    v22 = sub_233505670(@"Create Radio Station", v21);
    v23 = *(a1 + 32);
    v24 = *(v23 + 56);
    *(v23 + 56) = v22;
  }

  v25 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = *(*(a1 + 32) + 56);
    v27 = [v20 dictionary];
    v38 = 138543618;
    v39 = v26;
    v40 = 2114;
    v41 = v27;
    _os_log_impl(&dword_2334D9000, v25, OS_LOG_TYPE_ERROR, "Create Radio Station (completion) <%{public}@>: notifying assistant %{public}@", &v38, 0x16u);
  }

  v28 = *(a1 + 48);
  v29 = [v20 dictionary];
  (*(v28 + 16))(v28, v29);

LABEL_19:
  v37 = *MEMORY[0x277D85DE8];
}

void sub_2334E64A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x277D47208]);
    v9 = [v6 localizedFailureReason];
    v10 = [v8 initWithReason:v9];

    if (![*(*(a1 + 40) + 56) length])
    {
      v11 = [*(a1 + 40) aceId];
      v12 = sub_233505670(@"Create Radio Station", v11);
      v13 = *(a1 + 40);
      v14 = *(v13 + 56);
      *(v13 + 56) = v12;
    }

    v15 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a1 + 40) + 56);
      v17 = [v10 dictionary];
      v27 = 138543618;
      v28 = v16;
      v29 = 2114;
      v30 = v17;
      _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_ERROR, "Create Radio Station (completion) <%{public}@>: notifying assistant %{public}@", &v27, 0x16u);
    }

    v18 = *(a1 + 56);
    v19 = [v10 dictionary];
    (*(v18 + 16))(v18, v19);
  }

  else
  {
    if (![*(*(a1 + 40) + 56) length])
    {
      v20 = [*(a1 + 40) aceId];
      v21 = sub_233505670(@"Create Radio Station", v20);
      v22 = *(a1 + 40);
      v23 = *(v22 + 56);
      *(v22 + 56) = v21;
    }

    v24 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(*(a1 + 40) + 56);
      v27 = 138543618;
      v28 = v25;
      v29 = 2114;
      v30 = a2;
      _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_DEFAULT, "Create Radio Station (connection) <%{public}@>: connected to: %{public}@", &v27, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_2334E6730(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  if (*(a1 + 56))
  {
    if (sub_2335059A8(a3))
    {
      v6 = objc_alloc_init(MEMORY[0x277D47218]);
      if (![*(*(a1 + 40) + 56) length])
      {
        v7 = [*(a1 + 40) aceId];
        v8 = sub_233505670(@"Create Radio Station", v7);
        v9 = *(a1 + 40);
        v10 = *(v9 + 56);
        *(v9 + 56) = v8;
      }

      v11 = _MPLogCategoryAssistant();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v12 = *(*(a1 + 40) + 56);
      v13 = [v6 dictionary];
      *buf = 138543618;
      v24 = v12;
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_DEFAULT, "Create Radio Station (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"The system media app reported that creating the station was unsuccessful. (stationURL = %@)", *(a1 + 48)];
      v6 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:v11];
      if (![*(*(a1 + 40) + 56) length])
      {
        v14 = [*(a1 + 40) aceId];
        v15 = sub_233505670(@"Create Radio Station", v14);
        v16 = *(a1 + 40);
        v17 = *(v16 + 56);
        *(v16 + 56) = v15;
      }

      v13 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v18 = *(*(a1 + 40) + 56);
        v19 = [v6 dictionary];
        *buf = 138543618;
        v24 = v18;
        v25 = 2114;
        v26 = v19;
        _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_ERROR, "Create Radio Station (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
      }
    }

LABEL_12:
    v20 = *(a1 + 56);
    v21 = [v6 dictionary];
    (*(v20 + 16))(v20, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2334E6C8C(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 40);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) hashedRouteUIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2334E6DA4;
  v11[3] = &unk_2789DBBC0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *v4;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 72);
  [v5 resolveWithHashedRouteIdentifiers:v6 audioRoutingInfo:a2 completion:v11];
}

void sub_2334E6DA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2334E6E74;
  v9[3] = &unk_2789DBB98;
  v10 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  [v10 sendCommand:19 toDestination:a2 withOptions:v5 completion:v9];
}

void sub_2334E6E74(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:@"Decrease Playback Speed" forKeyedSubscript:@"pluginname"];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
  v7 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceNow];
  v9 = [v7 numberWithDouble:fabs(v8)];
  [v6 setObject:v9 forKeyedSubscript:@"duration"];

  if (sub_2335059A8(v4))
  {
    v10 = objc_alloc_init(MEMORY[0x277D47218]);
LABEL_5:
    v12 = v10;
    goto LABEL_7;
  }

  if ([v4 containsObject:&unk_2848D8C28])
  {
    v11 = objc_alloc(MEMORY[0x277D47208]);
    v10 = [v11 initWithErrorCode:*MEMORY[0x277D486F0]];
    goto LABEL_5;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"player statuses: %@", v4];
  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
  [v6 setObject:v13 forKeyedSubscript:@"errorstring"];
  v12 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:v13];

LABEL_7:
  if (![*(*(a1 + 48) + 56) length])
  {
    v14 = [*(a1 + 48) aceId];
    v15 = sub_233505670(@"Decrease Playback Speed", v14);
    v16 = *(a1 + 48);
    v17 = *(v16 + 56);
    *(v16 + 56) = v15;
  }

  v18 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 48) + 56);
    v20 = [v12 dictionary];
    *buf = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Decrease Playback Speed (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 56);
  v22 = [v12 dictionary];
  (*(v21 + 16))(v21, v22);

  v25 = v6;
  v23 = v6;
  AnalyticsSendEventLazy();

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2334E72B8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![*(*(a1 + 32) + 56) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Dislikes Media Entity", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 56);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Dislikes Media Entity (completion) <%{public}@>: notifying assistant %{public}@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334E7594(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    v5 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2334E77A8;
    v17[3] = &unk_2789DB2D8;
    v17[4] = v5;
    v18 = *(a1 + 40);
    [v5 _performWithCompletion:v17];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"no user identity"];
    if (![*(*(a1 + 32) + 56) length])
    {
      v7 = [*(a1 + 32) aceId];
      v8 = sub_233505670(@"Dislikes Media Entity", v7);
      v9 = *(a1 + 32);
      v10 = *(v9 + 56);
      *(v9 + 56) = v8;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(a1 + 32) + 56);
      v13 = [v6 dictionary];
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_DEFAULT, "Dislikes Media Entity (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v14 = *(a1 + 40);
    v15 = [v6 dictionary];
    (*(v14 + 16))(v14, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2334E77A8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![*(*(a1 + 32) + 56) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Dislikes Media Entity", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 56);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Dislikes Media Entity (completion) <%{public}@>: notifying assistant %{public}@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334E7C10(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2334E7CE0;
  v7[3] = &unk_2789DAEC8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 48);
  sub_233507BFC(@"Get Dynamite Client State", v4, 0, a2, v7);
}

uint64_t sub_2334E7CE0(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setClientState:a2];
  if (![*(*(a1 + 40) + 56) length])
  {
    v3 = [*(a1 + 40) aceId];
    v4 = sub_233505670(@"Get Dynamite Client State", v3);
    v5 = *(a1 + 40);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;
  }

  v7 = _MPLogCategoryAssistant_Oversize();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 40) + 56);
    v9 = [*(a1 + 32) dictionary];
    v14 = 138543619;
    v15 = v8;
    v16 = 2113;
    v17 = v9;
    _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_DEFAULT, "Get Dynamite Client State (completion) <%{public}@>: notifying assistant %{private}@", &v14, 0x16u);
  }

  v10 = *(a1 + 48);
  v11 = [*(a1 + 32) dictionary];
  (*(v10 + 16))(v10, v11);

  result = ICSiriPostDynamiteClientStateChangedNotification();
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2334E81E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 48)];
  if (!a3 && MRPlaybackQueueGetContentItemsCount())
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = MRPlaybackQueueCopyContentItems();
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = MRContentItemCopyNowPlayingInfo();
          v13 = sub_2335051C8(v12);
          [v5 addObject:{v13, v15}];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  (*(*(a1 + 32) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2334E8A14(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [a2 allKeys];
  if (a2)
  {
    v6 = MRAVReconnaissanceSessionCreateWithEndpointFeatures();
    dispatch_group_enter(*(a1 + 48));
    v7 = *(a1 + 64);
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    v21 = v8;
    v22 = *(a1 + 56);
    MRAVReconnaissanceSessionBeginSearch();
    CFRelease(v6);

    v10 = v21;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"UID decoding error"];
    if (![*(*(a1 + 40) + 56) length])
    {
      v11 = [*(a1 + 40) aceId];
      v12 = sub_233505670(@"Get Now Playing Queue Details", v11);
      v13 = *(a1 + 40);
      v14 = *(v13 + 56);
      *(v13 + 56) = v12;
    }

    v15 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a1 + 40) + 56);
      v17 = [v10 dictionary];
      *buf = 138543618;
      v24 = v16;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v18 = *(a1 + 56);
    v19 = [v10 dictionary];
    (*(v18 + 16))(v18, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2334E8C80(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (![*(*(a1 + 32) + 56) length])
    {
      v4 = [*(a1 + 32) aceId];
      v5 = sub_233505670(@"Get Now Playing Queue Details", v4);
      v6 = *(a1 + 32);
      v7 = *(v6 + 56);
      *(v6 + 56) = v5;
    }

    v8 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(a1 + 32) + 56);
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = a2;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details (default) <%{public}@>: leader %{public}@", &v11, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = MRAVEndpointCopyOrigin();
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = MRMediaRemoteGetLocalOrigin();
    CFRetain(*(*(*(a1 + 48) + 8) + 24));
  }

  dispatch_group_leave(*(a1 + 40));
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334E8DD8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPreviousItems:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_2334E8E18(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setNextItems:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_2334E8E58(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  CFRelease(*(*(*(a1 + 56) + 8) + 24));
  if (![*(*(a1 + 32) + 56) length])
  {
    v2 = [*(a1 + 32) aceId];
    v3 = sub_233505670(@"Get Now Playing Queue Details", v2);
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;
  }

  v6 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 56);
    v8 = [*(a1 + 40) dictionary];
    v12 = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_2334D9000, v6, OS_LOG_TYPE_DEFAULT, "Get Now Playing Queue Details (completion) <%{public}@>: notifying assistant %{public}@", &v12, 0x16u);
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) dictionary];
  (*(v9 + 16))(v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2334E8FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CFRelease(*(a1 + 64));
  if (a4)
  {
    v7 = *(a1 + 32);

    dispatch_group_leave(v7);
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D27830]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2334E90E4;
    v14[3] = &unk_2789DAF18;
    v15 = v8;
    v9 = *(a1 + 56);
    *&v10 = *(a1 + 32);
    *(&v10 + 1) = *(a1 + 40);
    v13 = v10;
    *&v11 = *(a1 + 48);
    *(&v11 + 1) = v9;
    v16 = v13;
    v17 = v11;
    v12 = v8;
    [v12 connectToEndpoint:a3 completion:v14];
  }
}

void sub_2334E90E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x277D47208]);
    v9 = [v6 localizedFailureReason];
    v10 = [v8 initWithReason:v9];

    if (![*(*(a1 + 48) + 56) length])
    {
      v11 = [*(a1 + 48) aceId];
      v12 = sub_233505670(@"Get Now Playing Queue Details", v11);
      v13 = *(a1 + 48);
      v14 = *(v13 + 56);
      *(v13 + 56) = v12;
    }

    v15 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a1 + 48) + 56);
      v17 = [v10 dictionary];
      v21 = 138543618;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details (completion) <%{public}@>: notifying assistant %{public}@", &v21, 0x16u);
    }

    v18 = *(a1 + 56);
    v19 = [v10 dictionary];
    (*(v18 + 16))(v18, v19);
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = a3;
    CFRetain(*(*(*(a1 + 64) + 8) + 24));
    dispatch_group_leave(*(a1 + 40));
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2334E9660(id *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = [a2 allKeys];
  if (a2)
  {
    v6 = MRAVReconnaissanceSessionCreateWithEndpointFeatures();
    v18 = a1[5];
    v19 = a1[6];
    v20 = a1[7];
    MRAVReconnaissanceSessionBeginSearch();
    CFRelease(v6);
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"UID decoding error"];
    if (![*(a1[5] + 7) length])
    {
      v8 = [a1[5] aceId];
      v9 = sub_233505670(@"Get Now Playing Queue Details Remote", v8);
      v10 = a1[5];
      v11 = v10[7];
      v10[7] = v9;
    }

    v12 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1[5] + 7);
      v14 = [v7 dictionary];
      *buf = 138543618;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details Remote (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v15 = a1[7];
    v16 = [v7 dictionary];
    v15[2](v15, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2334E98A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D47208]);
    v8 = [v6 localizedFailureReason];
    v9 = [v7 initWithReason:v8];

    if (![*(*(a1 + 32) + 56) length])
    {
      v10 = [*(a1 + 32) aceId];
      v11 = sub_233505670(@"Get Now Playing Queue Details Remote", v10);
      v12 = *(a1 + 32);
      v13 = *(v12 + 56);
      *(v12 + 56) = v11;
    }

    v14 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*(a1 + 32) + 56);
      v16 = [v9 dictionary];
      *buf = 138543618;
      v29 = v15;
      v30 = 2114;
      v31 = v16;
      _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details Remote (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v17 = *(a1 + 48);
    v18 = [v9 dictionary];
    (*(v17 + 16))(v17, v18);
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277D27830]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2334E9AE8;
    v23[3] = &unk_2789DB030;
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v24 = v19;
    v25 = v20;
    v26 = v21;
    v27 = *(a1 + 48);
    v9 = v19;
    [v9 connectToEndpoint:a3 completion:v23];

    v18 = v24;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2334E9AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = [v5 queueDetails];
  v8 = objc_alloc_init(MEMORY[0x277D475D8]);
  dispatch_group_enter(*(a1 + 48));
  v9 = -[v7 previousItemCount];
  v10 = [v7 previousItemCount];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2334E9D1C;
  v22[3] = &unk_2789DB008;
  v11 = v8;
  v23 = v11;
  v24 = *(a1 + 48);
  [v7 getSAMPMediaItems:v9 origin:v10 completion:{a3, v22}];
  dispatch_group_enter(*(a1 + 48));
  v12 = [v7 nextItemCount];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2334E9D5C;
  v19[3] = &unk_2789DB008;
  v13 = v11;
  v20 = v13;
  v21 = *(a1 + 48);
  [v7 getSAMPMediaItems:0 origin:v12 completion:{a3, v19}];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2334E9D9C;
  block[3] = &unk_2789DB120;
  v14 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v17 = v13;
  v18 = *(a1 + 56);
  v15 = v13;
  dispatch_group_notify(v14, MEMORY[0x277D85CD0], block);
}

void sub_2334E9D1C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPreviousItems:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_2334E9D5C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setNextItems:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_2334E9D9C(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (![*(*(a1 + 32) + 56) length])
  {
    v2 = [*(a1 + 32) aceId];
    v3 = sub_233505670(@"Get Now Playing Queue Details Remote", v2);
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;
  }

  v6 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 56);
    v8 = [*(a1 + 40) dictionary];
    v12 = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_2334D9000, v6, OS_LOG_TYPE_DEFAULT, "Get Now Playing Queue Details Remote (completion) <%{public}@>: notifying assistant %{public}@", &v12, 0x16u);
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) dictionary];
  (*(v9 + 16))(v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2334EA1B0(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = sub_2335051C8(v11);
  v4 = [v11 objectForKeyedSubscript:*MEMORY[0x277D27C30]];
  v5 = [v4 isEqualToString:*MEMORY[0x277D27AF8]];
  v6 = MEMORY[0x277D48608];
  if (!v5)
  {
    v6 = MEMORY[0x277D48600];
  }

  v7 = *v6;
  [*(a1 + 32) setListeningToItem:v3];
  [*(a1 + 32) setSource:v7];
  v8 = [v11 objectForKeyedSubscript:*MEMORY[0x277D27C28]];
  v9 = [v8 BOOLValue];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  [*(a1 + 32) setListeningToMusicApplication:v10];

  dispatch_group_leave(*(a1 + 40));
}

void sub_2334EA2DC(uint64_t a1, int a2)
{
  if ((a2 - 1) > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_2335115C0[a2 - 1];
  }

  [*(a1 + 32) setState:v3];
  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

void sub_2334EA338(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (![*(*(a1 + 32) + 56) length])
  {
    v2 = [*(a1 + 32) aceId];
    v3 = sub_233505670(@"Get State", v2);
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;
  }

  v6 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 56);
    v8 = [*(a1 + 40) dictionary];
    v12 = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_2334D9000, v6, OS_LOG_TYPE_DEFAULT, "Get State (completion) <%{public}@>: notifying assistant %{public}@", &v12, 0x16u);
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) dictionary];
  (*(v9 + 16))(v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2334EABB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose((v59 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2334EAC10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2334EAC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  ContentItemAtOffset = MRPlaybackQueueGetContentItemAtOffset();
  v6 = [*(*(a1 + 32) + 104) length];
  if (a3)
  {
    if (!v6)
    {
      v7 = [*(a1 + 32) aceId];
      v8 = sub_233505670(@"Get State Response Remote", v7);
      v9 = *(a1 + 32);
      v10 = *(v9 + 104);
      *(v9 + 104) = v8;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = *(*(a1 + 32) + 104);
      v24 = 138543874;
      v25 = v13;
      v26 = 2114;
      v27 = a3;
      v28 = 2114;
      v29 = v12;
      _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_ERROR, "Get State Response Remote (playinginfo) <%{public}@>: no queue %{public}@ endpoint %{public}@", &v24, 0x20u);
    }
  }

  else
  {
    if (!v6)
    {
      v14 = [*(a1 + 32) aceId];
      v15 = sub_233505670(@"Get State Response Remote", v14);
      v16 = *(a1 + 32);
      v17 = *(v16 + 104);
      *(v16 + 104) = v15;
    }

    v18 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 40);
      v20 = *(*(a1 + 32) + 104);
      v24 = 138543874;
      v25 = v20;
      v26 = 2114;
      v27 = ContentItemAtOffset;
      v28 = 2114;
      v29 = v19;
      _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: playing %{public}@ endpoint %{public}@", &v24, 0x20u);
    }

    v21 = MRContentItemCopyNowPlayingInfo();
    v22 = *(*(a1 + 56) + 8);
    v11 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  CFRelease(*(a1 + 64));
  dispatch_group_leave(*(a1 + 48));
  v23 = *MEMORY[0x277D85DE8];
}

void sub_2334EAE2C(uint64_t a1, unsigned int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (![*(*(a1 + 32) + 104) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Get State Response Remote", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 104);
    *(v6 + 104) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 32) + 104);
    v14 = 138543874;
    v15 = v10;
    v16 = 2048;
    v17 = a2;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: playback state %ld endpoint %{public}@", &v14, 0x20u);
  }

  if (a2 - 1 > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = dword_2335115C0[a2 - 1];
  }

  v12 = *(a1 + 64);
  *(*(*(a1 + 56) + 8) + 24) = v11;
  CFRelease(v12);
  dispatch_group_leave(*(a1 + 48));
  v13 = *MEMORY[0x277D85DE8];
}

void sub_2334EAF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (![*(*(a1 + 32) + 104) length])
    {
      v5 = [*(a1 + 32) aceId];
      v6 = sub_233505670(@"Get State Response Remote", v5);
      v7 = *(a1 + 32);
      v8 = *(v7 + 104);
      *(v7 + 104) = v6;
    }

    v9 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = *(*(a1 + 32) + 104);
      v24 = 138543874;
      v25 = v11;
      v26 = 2114;
      *v27 = a3;
      *&v27[8] = 2114;
      *&v27[10] = v10;
      _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_ERROR, "Get State Response Remote (playinginfo) <%{public}@>: no device info %{public}@ endpoint %{public}@", &v24, 0x20u);
    }
  }

  else
  {
    BundleIdentifier = *(a1 + 64);
    if (BundleIdentifier)
    {
      BundleIdentifier = MRNowPlayingClientGetBundleIdentifier();
    }

    v13 = BundleIdentifier;
    v9 = MRPairedDeviceCopySystemMediaApplication();
    v14 = [v9 isEqual:v13];

    *(*(*(a1 + 56) + 8) + 24) = v14;
    if (![*(*(a1 + 32) + 104) length])
    {
      v15 = [*(a1 + 32) aceId];
      v16 = sub_233505670(@"Get State Response Remote", v15);
      v17 = *(a1 + 32);
      v18 = *(v17 + 104);
      *(v17 + 104) = v16;
    }

    v19 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      v21 = *(*(a1 + 32) + 104);
      v22 = *(*(*(a1 + 56) + 8) + 24);
      v24 = 138543874;
      v25 = v21;
      v26 = 1024;
      *v27 = v22;
      *&v27[4] = 2114;
      *&v27[6] = v20;
      _os_log_impl(&dword_2334D9000, v19, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: is music app %{BOOL}u endpoint %{public}@", &v24, 0x1Cu);
    }
  }

  CFRelease(*(a1 + 72));
  dispatch_group_leave(*(a1 + 48));
  v23 = *MEMORY[0x277D85DE8];
}

void sub_2334EB1C8(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (![*(*(a1 + 32) + 104) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Get State Response Remote", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 104);
    *(v6 + 104) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 32) + 104);
    v15 = 138543874;
    v16 = v10;
    v17 = 2114;
    v18 = a2;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: group identity %{public}@endpoint %{public}@", &v15, 0x20u);
  }

  v11 = [a2 copy];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  dispatch_group_leave(*(a1 + 48));
  v14 = *MEMORY[0x277D85DE8];
}

void sub_2334EB308(uint64_t a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  v3 = [v2 outputDevices];
  if (![*(*(a1 + 32) + 104) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Get State Response Remote", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 104);
    *(v6 + 104) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 104);
    v10 = [v3 count];
    v11 = *(a1 + 72);
    *buf = 138543874;
    v82 = v9;
    v83 = 2048;
    v84 = v10;
    v85 = 2114;
    v86 = v11;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: %ld output devices endpoint %{public}@", buf, 0x20u);
  }

  CFRelease(*(a1 + 72));
  v12 = [v2 designatedGroupLeader];
  if (!v12)
  {
    v13 = [v2 outputDevices];
    v12 = [v13 firstObject];

    if (![*(*(a1 + 32) + 104) length])
    {
      v14 = [*(a1 + 32) aceId];
      v15 = sub_233505670(@"Get State Response Remote", v14);
      v16 = *(a1 + 32);
      v17 = *(v16 + 104);
      *(v16 + 104) = v15;
    }

    v18 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(a1 + 32) + 104);
      *buf = 138543618;
      v82 = v19;
      v83 = 2114;
      v84 = v12;
      _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: using first output device %{public}@", buf, 0x16u);
    }
  }

  v58 = v12;
  v59 = v2;
  v62 = [v12 groupID];
  v20 = [MEMORY[0x277CBEB18] array];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v21 = v3;
  v22 = [v21 countByEnumeratingWithState:&v73 objects:v80 count:16];
  v60 = v21;
  if (v22)
  {
    v23 = v22;
    v24 = *v74;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v74 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v73 + 1) + 8 * i);
        v27 = [v26 clusterComposition];
        if (v27)
        {
          v28 = NSStringFromSelector(sel_uid);
          v29 = [v27 valueForKeyPath:v28];
          [v20 addObjectsFromArray:v29];

          if (![*(*(a1 + 32) + 104) length])
          {
            v30 = [*(a1 + 32) aceId];
            v31 = sub_233505670(@"Get State Response Remote", v30);
            v32 = *(a1 + 32);
            v33 = *(v32 + 104);
            *(v32 + 104) = v31;
          }

          v34 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = *(*(a1 + 32) + 104);
            *buf = 138543618;
            v82 = v35;
            v83 = 2114;
            v84 = v20;
            _os_log_impl(&dword_2334D9000, v34, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: using cluster device IDs %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v36 = [v26 uid];
          [v20 addObject:v36];

          if (![*(*(a1 + 32) + 104) length])
          {
            v37 = [*(a1 + 32) aceId];
            v38 = sub_233505670(@"Get State Response Remote", v37);
            v39 = *(a1 + 32);
            v40 = *(v39 + 104);
            *(v39 + 104) = v38;
          }

          v34 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v41 = *(*(a1 + 32) + 104);
            v42 = [v26 uid];
            *buf = 138543618;
            v82 = v41;
            v21 = v60;
            v83 = 2114;
            v84 = v42;
            _os_log_impl(&dword_2334D9000, v34, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: using output device ID %{public}@", buf, 0x16u);
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v73 objects:v80 count:16];
    }

    while (v23);
  }

  v43 = dispatch_group_create();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  aSelector = v20;
  v44 = [aSelector countByEnumeratingWithState:&v69 objects:v79 count:16];
  v45 = v62;
  if (v44)
  {
    v46 = v44;
    v47 = *v70;
    do
    {
      v48 = 0;
      do
      {
        if (*v70 != v47)
        {
          objc_enumerationMutation(aSelector);
        }

        v49 = *(*(&v69 + 1) + 8 * v48);
        dispatch_group_enter(v43);
        if ([v45 length])
        {
          v78 = v45;
          v50 = &v78;
LABEL_36:
          v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
          goto LABEL_37;
        }

        if ([*(*(*(a1 + 40) + 8) + 40) length])
        {
          v77 = *(*(*(a1 + 40) + 8) + 40);
          v50 = &v77;
          goto LABEL_36;
        }

        v51 = &unk_2848D8D18;
LABEL_37:
        v52 = *(a1 + 32);
        v53 = *(v52 + 96);
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = sub_2334EBA30;
        v65[3] = &unk_2789DB1E8;
        v67 = *(a1 + 48);
        v68 = *(a1 + 64);
        v65[4] = v52;
        v65[5] = v49;
        v66 = v43;
        [v53 encodeHashedRouteUIDs:v51 completion:v65];

        ++v48;
        v45 = v62;
      }

      while (v46 != v48);
      v54 = [aSelector countByEnumeratingWithState:&v69 objects:v79 count:16];
      v46 = v54;
    }

    while (v54);
  }

  v55 = *(a1 + 32);
  v56 = *(v55 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2334EBC0C;
  block[3] = &unk_2789DB210;
  v64 = *(a1 + 80);
  block[4] = v55;
  dispatch_group_notify(v43, v56, block);

  v57 = *MEMORY[0x277D85DE8];
}

void sub_2334EBA30(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D47558];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 firstObject];

  [v5 setHashedGroupID:v6];
  v7 = sub_2335051C8(*(*(*(a1 + 56) + 8) + 40));
  v8 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:*MEMORY[0x277D27C58]];
  v9 = [v8 length];
  v10 = MEMORY[0x277D48600];
  if (v9)
  {
    v10 = MEMORY[0x277D48608];
  }

  v11 = *v10;
  [v5 setListeningToItem:v7];
  [v5 setSource:v11];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:*(*(*(a1 + 64) + 8) + 24)];
  [v5 setListeningToMusicApplication:v12];

  [v5 setState:*(*(*(a1 + 72) + 8) + 24)];
  v13 = *(a1 + 32);
  v14 = *(*(a1 + 32) + 80);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2334EBC5C;
  v16[3] = &unk_2789DBFB8;
  v17 = v13;
  v18 = v5;
  v19 = *(a1 + 48);
  v15 = v5;
  dispatch_sync(v14, v16);
}

void sub_2334EBC0C(uint64_t a1)
{
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 48));
  v2 = *(*(a1 + 32) + 88);

  dispatch_group_leave(v2);
}

void sub_2334EBC5C(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    [*(v3 + 64) setObject:*(a1 + 48) forKey:v2];
    if (![*(*(a1 + 32) + 104) length])
    {
      v4 = [*(a1 + 32) aceId];
      v5 = sub_233505670(@"Get State Response Remote", v4);
      v6 = *(a1 + 32);
      v7 = *(v6 + 104);
      *(v6 + 104) = v5;
    }

    v8 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 104);
      v10 = [*(a1 + 48) dictionary];
      v18 = 138543874;
      v19 = v9;
      v20 = 2114;
      v21 = v2;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: hashedUID %{public}@ response %{public}@.", &v18, 0x20u);
    }
  }

  else
  {
    if (![*(v3 + 104) length])
    {
      v11 = [*(a1 + 32) aceId];
      v12 = sub_233505670(@"Get State Response Remote", v11);
      v13 = *(a1 + 32);
      v14 = *(v13 + 104);
      *(v13 + 104) = v12;
    }

    v8 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v16 = *(*(a1 + 32) + 104);
      v18 = 138543618;
      v19 = v16;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: UID %{public}@ was not requested", &v18, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 56));
  v17 = *MEMORY[0x277D85DE8];
}

void sub_2334EC0E8(id *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong(a1[4] + 7, a2);
  v5 = [*(a1[4] + 7) allKeys];
  v6 = [v5 mutableCopy];

  if (*(a1[4] + 7))
  {
    v7 = dispatch_group_create();
    v8 = a1[4];
    v9 = v8[11];
    v8[11] = v7;

    v10 = dispatch_queue_create("com.apple.MediaPlayer.assistant.responseCollection", 0);
    v11 = a1[4];
    v12 = v11[10];
    v11[10] = v10;

    if ([v6 count])
    {
      if (![*(a1[4] + 13) length])
      {
        v13 = [a1[4] aceId];
        v14 = sub_233505670(@"Get State Response Remote", v13);
        v15 = a1[4];
        v16 = v15[13];
        v15[13] = v14;
      }

      v17 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1[4] + 13);
        *buf = 138543618;
        v36 = v18;
        v37 = 2114;
        v38 = v6;
        _os_log_impl(&dword_2334D9000, v17, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (discovery) <%{public}@>: To discover: %{public}@", buf, 0x16u);
      }

      v19 = objc_alloc_init(MEMORY[0x277D27838]);
      dispatch_group_enter(*(a1[4] + 11));
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_2334EC414;
      v33[3] = &unk_2789DB0F8;
      v33[4] = a1[4];
      v34 = v19;
      v20 = v19;
      [v20 discoverRemoteControlEndpointsMatchingUIDs:v6 completion:v33];
    }

    v21 = *(a1[4] + 11);
    v22 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2334EC698;
    block[3] = &unk_2789DB120;
    v23 = a1[5];
    v24 = a1[4];
    v30 = v23;
    v31 = v24;
    v32 = a1[6];
    dispatch_group_notify(v21, v22, block);
  }

  else
  {
    v25 = a1[6];
    v26 = objc_alloc_init(MEMORY[0x277D47208]);
    v27 = [v26 dictionary];
    v25[2](v25, v27);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2334EC414(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v26;
    *&v4 = 138543618;
    v18 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        if (![*(*(a1 + 32) + 104) length])
        {
          v9 = [*(a1 + 32) aceId];
          v10 = sub_233505670(@"Get State Response Remote", v9);
          v11 = *(a1 + 32);
          v12 = *(v11 + 104);
          *(v11 + 104) = v10;
        }

        v13 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(*(a1 + 32) + 104);
          *buf = v18;
          v30 = v14;
          v31 = 2114;
          v32 = v8;
          _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (discovery) <%{public}@>: Discovered: %{public}@", buf, 0x16u);
        }

        v15 = objc_alloc_init(MEMORY[0x277D27830]);
        dispatch_group_enter(*(*(a1 + 32) + 88));
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_2334EC7F8;
        v20[3] = &unk_2789DB0D0;
        v21 = *(a1 + 40);
        v22 = v15;
        v23 = *(a1 + 32);
        v24 = v8;
        v16 = v15;
        [v16 connectToEndpoint:v8 completion:v20];
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(*(a1 + 32) + 88));

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2334EC698(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRouteResponses:*(*(a1 + 40) + 64)];
  if (![*(*(a1 + 40) + 104) length])
  {
    v2 = [*(a1 + 40) aceId];
    v3 = sub_233505670(@"Get State Response Remote", v2);
    v4 = *(a1 + 40);
    v5 = *(v4 + 104);
    *(v4 + 104) = v3;
  }

  v6 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 40) + 104);
    v8 = [*(a1 + 32) dictionary];
    v12 = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_2334D9000, v6, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (completion) <%{public}@>: notifying assistant %{public}@", &v12, 0x16u);
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 32) dictionary];
  (*(v9 + 16))(v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2334EC7F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v5)
  {
    if (![v8[13] length])
    {
      v9 = [*(a1 + 48) aceId];
      v10 = sub_233505670(@"Get State Response Remote", v9);
      v11 = *(a1 + 48);
      v12 = *(v11 + 104);
      *(v11 + 104) = v10;
    }

    v13 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 56);
      v15 = *(*(a1 + 48) + 104);
      v17 = 138543874;
      v18 = v15;
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_ERROR, "Get State Response Remote (connect) <%{public}@>: Failed connect: %{public}@ -- %{public}@", &v17, 0x20u);
    }

    dispatch_group_leave(*(*(a1 + 48) + 88));
  }

  else
  {
    [v8 setPlayingInfoFromEndpoint:*(a1 + 56)];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2334ECBDC(id *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = [a2 allKeys];
  if (!a2)
  {
    v6 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"UID decoding error"];
    if (![*(a1[5] + 7) length])
    {
      v7 = [a1[5] aceId];
      v8 = sub_233505670(@"Get Volume Level", v7);
      v9 = a1[5];
      v10 = v9[7];
      v9[7] = v8;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1[5] + 7);
      v13 = [v6 dictionary];
      *buf = 138543618;
      v31 = v12;
      v32 = 2114;
      v33 = v13;
      _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_ERROR, "Get Volume Level (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v14 = a1[6];
    v15 = [v6 dictionary];
    v14[2](v14, v15);
  }

  if ([v5 count] == 1)
  {
    v16 = MRAVReconnaissanceSessionCreateWithEndpointFeatures();
    v28 = a1[5];
    v29 = a1[6];
    MRAVReconnaissanceSessionBeginSearch();
    CFRelease(v16);
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"Too many UIDs requested"];
    if (![*(a1[5] + 7) length])
    {
      v18 = [a1[5] aceId];
      v19 = sub_233505670(@"Get Volume Level", v18);
      v20 = a1[5];
      v21 = v20[7];
      v20[7] = v19;
    }

    v22 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1[5] + 7);
      v24 = [v17 dictionary];
      *buf = 138543618;
      v31 = v23;
      v32 = 2114;
      v33 = v24;
      _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_ERROR, "Get Volume Level (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v25 = a1[6];
    v26 = [v17 dictionary];
    v25[2](v25, v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_2334ECF38(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D47208]);
    v9 = [v7 localizedFailureReason];
    v10 = [v8 initWithReason:v9];

    if (![*(*(a1 + 32) + 56) length])
    {
      v11 = [*(a1 + 32) aceId];
      v12 = sub_233505670(@"Get Volume Level", v11);
      v13 = *(a1 + 32);
      v14 = *(v13 + 56);
      *(v13 + 56) = v12;
    }

    v15 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a1 + 32) + 56);
      v17 = [v10 dictionary];
      *buf = 138543618;
      v35 = v16;
      v36 = 2114;
      v37 = v17;
      _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_ERROR, "Get Volume Level (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v18 = *(a1 + 40);
    v19 = [v10 dictionary];
    (*(v18 + 16))(v18, v19);
  }

  else
  {
    v20 = [a2 firstObject];

    v21 = objc_alloc_init(MEMORY[0x277D27830]);
    CFRetain(*(a1 + 48));
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_2334ED190;
    v27[3] = &unk_2789DB288;
    v31 = a3;
    v32 = v20;
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v28 = v21;
    v29 = v22;
    v24 = v23;
    v25 = *(a1 + 48);
    v30 = v24;
    v33 = v25;
    v10 = v21;
    [v10 connectToEndpoint:a3 completion:v27];

    v19 = v28;
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_2334ED190(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 72);
  MRAVEndpointGetOutputDeviceVolume();
}

void sub_2334ED24C(uint64_t a1, void *a2, float a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = a2;
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D47208]);
    v9 = [v7 localizedFailureReason];
    v10 = [v8 initWithReason:v9];

    if (![*(*(a1 + 40) + 56) length])
    {
      v11 = [*(a1 + 40) aceId];
      v12 = sub_233505670(@"Get Volume Level", v11);
      v13 = *(a1 + 40);
      v14 = *(v13 + 56);
      *(v13 + 56) = v12;
    }

    v15 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a1 + 40) + 56);
      v17 = [v10 dictionary];
      v30 = 138543618;
      v31 = v16;
      v32 = 2114;
      v33 = v17;
      v18 = v15;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_2334D9000, v18, v19, "Get Volume Level (completion) <%{public}@>: notifying assistant %{public}@", &v30, 0x16u);
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277D475E0]);
    *&v20 = a3;
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    [v10 setVolumeValue:v21];

    if (![*(*(a1 + 40) + 56) length])
    {
      v22 = [*(a1 + 40) aceId];
      v23 = sub_233505670(@"Get Volume Level", v22);
      v24 = *(a1 + 40);
      v25 = *(v24 + 56);
      *(v24 + 56) = v23;
    }

    v15 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(*(a1 + 40) + 56);
      v17 = [v10 dictionary];
      v30 = 138543618;
      v31 = v26;
      v32 = 2114;
      v33 = v17;
      v18 = v15;
      v19 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  v27 = *(a1 + 48);
  v28 = [v10 dictionary];
  (*(v27 + 16))(v27, v28);

  CFRelease(*(a1 + 56));
  v29 = *MEMORY[0x277D85DE8];
}

void sub_2334ED7CC(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 40);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) hashedRouteUIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2334ED8E4;
  v11[3] = &unk_2789DBBC0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *v4;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 72);
  [v5 resolveWithHashedRouteIdentifiers:v6 audioRoutingInfo:a2 completion:v11];
}

void sub_2334ED8E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2334ED9B4;
  v9[3] = &unk_2789DBB98;
  v10 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  [v10 sendCommand:19 toDestination:a2 withOptions:v5 completion:v9];
}

void sub_2334ED9B4(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:@"Increase Playback Speed" forKeyedSubscript:@"pluginname"];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
  v7 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceNow];
  v9 = [v7 numberWithDouble:fabs(v8)];
  [v6 setObject:v9 forKeyedSubscript:@"duration"];

  if (sub_2335059A8(v4))
  {
    v10 = objc_alloc_init(MEMORY[0x277D47218]);
LABEL_5:
    v12 = v10;
    goto LABEL_7;
  }

  if ([v4 containsObject:&unk_2848D8C58])
  {
    v11 = objc_alloc(MEMORY[0x277D47208]);
    v10 = [v11 initWithErrorCode:*MEMORY[0x277D486F0]];
    goto LABEL_5;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"player statuses: %@", v4];
  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
  [v6 setObject:v13 forKeyedSubscript:@"errorstring"];
  v12 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:v13];

LABEL_7:
  if (![*(*(a1 + 48) + 56) length])
  {
    v14 = [*(a1 + 48) aceId];
    v15 = sub_233505670(@"Increase Playback Speed", v14);
    v16 = *(a1 + 48);
    v17 = *(v16 + 56);
    *(v16 + 56) = v15;
  }

  v18 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 48) + 56);
    v20 = [v12 dictionary];
    *buf = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Increase Playback Speed (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 56);
  v22 = [v12 dictionary];
  (*(v21 + 16))(v21, v22);

  v25 = v6;
  v23 = v6;
  AnalyticsSendEventLazy();

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2334EDDF8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![*(*(a1 + 32) + 56) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Likes Media Entity", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 56);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Likes Media Entity (completion) <%{public}@>: notifying assistant %{public}@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334EE0D4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    v5 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2334EE2E8;
    v17[3] = &unk_2789DB2D8;
    v17[4] = v5;
    v18 = *(a1 + 40);
    [v5 _performWithCompletion:v17];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"no user identity"];
    if (![*(*(a1 + 32) + 56) length])
    {
      v7 = [*(a1 + 32) aceId];
      v8 = sub_233505670(@"Likes Media Entity", v7);
      v9 = *(a1 + 32);
      v10 = *(v9 + 56);
      *(v9 + 56) = v8;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(a1 + 32) + 56);
      v13 = [v6 dictionary];
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_DEFAULT, "Likes Media Entity (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v14 = *(a1 + 40);
    v15 = [v6 dictionary];
    (*(v14 + 16))(v14, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2334EE2E8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![*(*(a1 + 32) + 56) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Likes Media Entity", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 56);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Likes Media Entity (completion) <%{public}@>: notifying assistant %{public}@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334EE614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2334EE62C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2334EE644(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a3)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(*(a1 + 40) + 8) + 40);
          v15 = [*(*(&v17 + 1) + 8 * v13) stations];
          [v14 addObjectsFromArray:v15];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2334EF324(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 mutableCopy];
  [v6 setSingleGroup:1];
  v7 = objc_alloc_init(MEMORY[0x277D27828]);
  [v5 setUserIdentity:*(*(a1 + 32) + 80)];
  [v5 setFeatureName:@"siri"];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2334F0570;
  v10[3] = &unk_2789DB350;
  v11 = v7;
  v8 = *(a1 + 40);
  v12 = *(a1 + 48);
  v9 = v7;
  [v9 sendPlaybackQueue:v5 toDestination:v6 withOptions:v8 completion:v10];
}

void sub_2334EF440(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_queue_create("com.apple.mediaPlayer.assistant.loadPredefinedQueue.sendCommand", 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2334F026C;
  v12[3] = &unk_2789DB3C8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  MEMORY[0x2383A0F90](v7, v12);
}

void sub_2334EF52C(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 0:
      if (![*(*(a1 + 32) + 72) length])
      {
        v20 = [*(a1 + 32) aceId];
        v21 = sub_233505670(@"Load Predefined Queue", v20);
        v22 = *(a1 + 32);
        v23 = *(v22 + 72);
        *(v22 + 72) = v21;
      }

      v24 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(*(a1 + 32) + 72);
        *buf = 138543362;
        v76 = v25;
        _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_ERROR, "Load Predefined Queue (radio) <%{public}@>: radio not available", buf, 0xCu);
      }

      v10 = *(a1 + 56);
      v11 = objc_alloc(MEMORY[0x277D47208]);
      v12 = MEMORY[0x277D48660];
      goto LABEL_19;
    case 2:
      if (![*(*(a1 + 32) + 72) length])
      {
        v13 = [*(a1 + 32) aceId];
        v14 = sub_233505670(@"Load Predefined Queue", v13);
        v15 = *(a1 + 32);
        v16 = *(v15 + 72);
        *(v15 + 72) = v14;
      }

      v17 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *(*(a1 + 32) + 72);
        *buf = 138543362;
        v76 = v18;
        _os_log_impl(&dword_2334D9000, v17, OS_LOG_TYPE_ERROR, "Load Predefined Queue (radio) <%{public}@>: companion not available", buf, 0xCu);
      }

      v10 = *(a1 + 56);
      v19 = objc_alloc_init(MEMORY[0x277D47208]);
      goto LABEL_20;
    case 1:
      if (![*(*(a1 + 32) + 72) length])
      {
        v4 = [*(a1 + 32) aceId];
        v5 = sub_233505670(@"Load Predefined Queue", v4);
        v6 = *(a1 + 32);
        v7 = *(v6 + 72);
        *(v6 + 72) = v5;
      }

      v8 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(*(a1 + 32) + 72);
        *buf = 138543362;
        v76 = v9;
        _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_ERROR, "Load Predefined Queue (radio) <%{public}@>: network conditions do not permit radio playback", buf, 0xCu);
      }

      v10 = *(a1 + 56);
      v11 = objc_alloc(MEMORY[0x277D47208]);
      v12 = MEMORY[0x277D485A8];
LABEL_19:
      v19 = [v11 initWithErrorCode:*v12];
LABEL_20:
      v26 = v19;
      (*(v10 + 16))(v10, v19);
      goto LABEL_44;
  }

  v26 = [*(a1 + 40) objectForKey:*MEMORY[0x277D27C50]];
  v27 = *(a1 + 32);
  if (v26)
  {
    if (![v27[9] length])
    {
      v28 = [*(a1 + 32) aceId];
      v29 = sub_233505670(@"Load Predefined Queue", v28);
      v30 = *(a1 + 32);
      v31 = *(v30 + 72);
      *(v30 + 72) = v29;
    }

    v32 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(*(a1 + 32) + 72);
      *buf = 138543362;
      v76 = v33;
      _os_log_impl(&dword_2334D9000, v32, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (radio) <%{public}@>: resuming playback", buf, 0xCu);
    }

    v34 = [MEMORY[0x277D27850] systemMediaApplicationDestination];
    v35 = [*(a1 + 32) hashedRouteUIDs];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_2334EFE98;
    v72[3] = &unk_2789DB418;
    v72[4] = *(a1 + 32);
    v73 = *(a1 + 48);
    v74 = *(a1 + 56);
    [v34 resolveWithHashedRouteIdentifiers:v35 audioRoutingInfo:*(a1 + 76) completion:v72];
  }

  else
  {
    v34 = [v27 _radioStations];
    if ([v34 count] && (objc_msgSend(v34, "firstObject"), (v36 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v37 = v36;
      v38 = a2 == 4;
      v39 = [v36 stationStringID];
      v40 = MEMORY[0x277D27870];
      v41 = [*(a1 + 32) refId];
      v42 = [v40 radioQueueWithContextID:v41 stationStringID:v39];

      v43 = [*(a1 + 32) startPlaying];
      [v42 setShouldImmediatelyStartPlayback:{objc_msgSend(v43, "BOOLValue")}];

      [v42 setShouldOverrideManuallyCuratedQueue:1];
      v44 = [MEMORY[0x277D27850] systemMediaApplicationDestination];
      v45 = [*(a1 + 32) hashedRouteUIDs];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = sub_2334EFFE8;
      v68[3] = &unk_2789DB440;
      v68[4] = *(a1 + 32);
      v70 = *(a1 + 56);
      v71 = *(a1 + 64);
      v69 = v42;
      v46 = *(a1 + 76);
      v47 = v42;
      [v44 resolveWithQueue:v47 hashedRouteIdentifiers:v45 localPlaybackPermitted:v38 audioRoutingInfo:v46 completion:v68];
    }

    else
    {
      v48 = sub_2335055C0(*(*(a1 + 32) + 80));
      v49 = [*(*(a1 + 32) + 72) length];
      if (v48)
      {
        if (!v49)
        {
          v50 = [*(a1 + 32) aceId];
          v51 = sub_233505670(@"Load Predefined Queue", v50);
          v52 = *(a1 + 32);
          v53 = *(v52 + 72);
          *(v52 + 72) = v51;
        }

        v54 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = *(*(a1 + 32) + 72);
          v56 = *(a1 + 72);
          *buf = 138543618;
          v76 = v55;
          v77 = 2048;
          v78 = v56;
          _os_log_impl(&dword_2334D9000, v54, OS_LOG_TYPE_ERROR, "Load Predefined Queue (radio) <%{public}@>: still loading library (type %ld).", buf, 0x16u);
        }

        v57 = *(a1 + 56);
        v58 = objc_alloc(MEMORY[0x277D47208]);
        v59 = MEMORY[0x277D48630];
      }

      else
      {
        if (!v49)
        {
          v60 = [*(a1 + 32) aceId];
          v61 = sub_233505670(@"Load Predefined Queue", v60);
          v62 = *(a1 + 32);
          v63 = *(v62 + 72);
          *(v62 + 72) = v61;
        }

        v64 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v65 = *(*(a1 + 32) + 72);
          v66 = *(a1 + 72);
          *buf = 138543618;
          v76 = v65;
          v77 = 2048;
          v78 = v66;
          _os_log_impl(&dword_2334D9000, v64, OS_LOG_TYPE_ERROR, "Load Predefined Queue (radio) <%{public}@>: empty library for (type %ld).", buf, 0x16u);
        }

        v57 = *(a1 + 56);
        v58 = objc_alloc(MEMORY[0x277D47208]);
        v59 = MEMORY[0x277D485F8];
      }

      v37 = [v58 initWithErrorCode:*v59];
      (*(v57 + 16))(v57, v37);
    }
  }

LABEL_44:
  v67 = *MEMORY[0x277D85DE8];
}

void sub_2334EFCF4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    if (![*(*(a1 + 32) + 72) length])
    {
      v4 = [*(a1 + 32) aceId];
      v5 = sub_233505670(@"Load Predefined Queue", v4);
      v6 = *(a1 + 32);
      v7 = *(v6 + 72);
      *(v6 + 72) = v5;
    }

    v8 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(a1 + 32) + 72);
      v17 = 138543362;
      v18 = v9;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_ERROR, "Load Predefined Queue (query) <%{public}@>: no available destination", &v17, 0xCu);
    }

    v10 = *(a1 + 48);
    v11 = objc_alloc(MEMORY[0x277D47208]);
    v12 = [v11 initWithErrorCode:*MEMORY[0x277D485A0]];
    (*(v10 + 16))(v10, v12);
  }

  if ([*(a1 + 32) dryRun])
  {
    v13 = *(a1 + 48);
    v14 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(v13 + 16))(v13, v14);
  }

  else
  {
    v15 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2334EFE98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 dryRun])
  {
    v5 = *(a1 + 48);
    v10 = objc_alloc_init(MEMORY[0x277D47218]);

    (*(v5 + 16))(v5, v10);
  }

  else
  {
    v6 = [v4 mutableCopy];

    [v6 setSingleGroup:1];
    v7 = objc_alloc_init(MEMORY[0x277D27828]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2334F018C;
    v11[3] = &unk_2789DB350;
    v12 = v7;
    v8 = *(a1 + 40);
    v13 = *(a1 + 48);
    v9 = v7;
    [v9 sendCommand:0 toDestination:v6 withOptions:v8 completion:v11];
  }
}

void sub_2334EFFE8(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    if (![*(*(a1 + 32) + 72) length])
    {
      v4 = [*(a1 + 32) aceId];
      v5 = sub_233505670(@"Load Predefined Queue", v4);
      v6 = *(a1 + 32);
      v7 = *(v6 + 72);
      *(v6 + 72) = v5;
    }

    v8 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(a1 + 32) + 72);
      v17 = 138543362;
      v18 = v9;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_ERROR, "Load Predefined Queue (radio) <%{public}@>: no available destination", &v17, 0xCu);
    }

    v10 = *(a1 + 48);
    v11 = objc_alloc(MEMORY[0x277D47208]);
    v12 = [v11 initWithErrorCode:*MEMORY[0x277D485A0]];
    (*(v10 + 16))(v10, v12);
  }

  if ([*(a1 + 32) dryRun])
  {
    v13 = *(a1 + 48);
    v14 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(v13 + 16))(v13, v14);
  }

  else
  {
    v15 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2334F018C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = v3;
  if (v3)
  {
    v6 = MEMORY[0x277D47208];
    v7 = v5;
    v8 = [v6 alloc];
    v9 = [v13 localizedFailureReason];
    v10 = [v8 initWithReason:v9];
    (*(v4 + 16))(v4, v10);
  }

  else
  {
    v11 = MEMORY[0x277D47218];
    v12 = v5;
    v9 = objc_alloc_init(v11);
    (*(v4 + 16))(v4, v9);
  }
}

void sub_2334F026C(id *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  MRAVEndpointGetLocalEndpoint();
  v4 = MRAVEndpointCopyUniqueIdentifier();
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 outputDeviceUIDs];
  LODWORD(v5) = [v7 containsObject:v6];

  if (v5)
  {

LABEL_4:
    if (![*(a1[5] + 9) length])
    {
      v10 = [a1[5] aceId];
      v11 = sub_233505670(@"Load Predefined Queue", v10);
      v12 = a1[5];
      v13 = v12[9];
      v12[9] = v11;
    }

    v14 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1[5] + 9);
      *buf = 138543362;
      v32 = v15;
      _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (send) <%{public}@>: sending to local WHA destination", buf, 0xCu);
    }

    v16 = *(a1[5] + 7);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_2334F0558;
    v27[3] = &unk_2789DB3A0;
    v30 = a1[7];
    v28 = a1[6];
    v29 = a1[4];
    [v16 prepareForAudioHandoffWithCompletion:v27];

    goto LABEL_14;
  }

  v8 = [a1[4] outputDeviceUIDs];
  v9 = [v8 containsObject:v4];

  if (v9)
  {
    goto LABEL_4;
  }

  if (![*(a1[5] + 9) length])
  {
    v17 = [a1[5] aceId];
    v18 = sub_233505670(@"Load Predefined Queue", v17);
    v19 = a1[5];
    v20 = v19[9];
    v19[9] = v18;
  }

  v21 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a1[4];
    v23 = *(a1[5] + 9);
    *buf = 138543618;
    v32 = v23;
    v33 = 2114;
    v34 = v22;
    _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (send) <%{public}@>: sending to destination %{public}@", buf, 0x16u);
  }

  v24 = a1[6];
  v25 = a1[4];
  (*(a1[7] + 2))();
LABEL_14:

  v26 = *MEMORY[0x277D85DE8];
}

void sub_2334F0570(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v16;
  if (v16 && ([v16 domain], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D277F0]), v8, v7 = v16, !v9))
  {
    IsInformational = MRMediaRemoteErrorIsInformational();
    v13 = *(a1 + 40);
    if (IsInformational)
    {
      v11 = objc_alloc_init(MEMORY[0x277D47218]);
      (*(v13 + 16))(v13, v11);
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x277D47208]);
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Send playback failed: %@", v16];
      v15 = [v14 initWithReason:v11];
      (*(v13 + 16))(v13, v15);
    }
  }

  else
  {
    v10 = *(a1 + 40);
    [v7 code];
    v11 = sub_233505AA8(v5);
    (*(v10 + 16))(v10, v11);
  }
}

void sub_2334F0A58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  v4 = [v2 requesterSharedUserId];
  v5 = [*(a1 + 32) sharedUserIdFromPlayableMusicAccount];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2334F0B34;
  v7[3] = &unk_2789DB648;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  sub_233506A24(@"Load Predefined Queue", v3, v4, v5, v7);
}

void sub_2334F0B34(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 80), a2);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2334F0D44;
    v17[3] = &unk_2789DB328;
    v5 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v5;
    sub_2334F0D44(v17);
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"no user identity"];
    if (![*(*(a1 + 32) + 72) length])
    {
      v7 = [*(a1 + 32) aceId];
      v8 = sub_233505670(@"Load Predefined Queue", v7);
      v9 = *(a1 + 32);
      v10 = *(v9 + 72);
      *(v9 + 72) = v8;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(a1 + 32) + 72);
      v13 = [v6 dictionary];
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v14 = *(a1 + 40);
    v15 = [v6 dictionary];
    (*(v14 + 16))(v14, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2334F0D44(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  MRMediaRemoteGetNowPlayingInfo();
}

void sub_2334F0DFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2334F0EA4;
  v5[3] = &unk_2789DB620;
  v5[4] = v4;
  v6 = *(a1 + 40);
  [v4 _performWithNowPlayingItem:a2 audioRoutingInfo:*(a1 + 48) completion:v5];
}

void sub_2334F0EA4(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![*(*(a1 + 32) + 72) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Load Predefined Queue", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    *(v6 + 72) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 72);
    v10 = [v3 dictionary];
    v14 = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (completion) <%{public}@>: notifying assistant %{public}@", &v14, 0x16u);
  }

  v11 = *(a1 + 40);
  v12 = [v3 dictionary];
  (*(v11 + 16))(v11, v12);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2334F1008()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = qword_27DE0E770;
  qword_27DE0E770 = v0;

  [qword_27DE0E770 setMaxConcurrentOperationCount:2];
  [qword_27DE0E770 setName:@"com.apple.MediaPlayer.AssistantBundle.MPAssistantLoadPredefinedQueue"];
  v2 = qword_27DE0E770;
  v3 = [MEMORY[0x277CCACC8] currentThread];
  [v2 setQualityOfService:{objc_msgSend(v3, "qualityOfService")}];
}

void sub_2334F13C0(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [a2 mutableCopy];
  v6 = [*(a1 + 40) groupID];
  v7 = [v6 isEqualToString:@"LOCAL_DEVICE"];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) groupID];
    v10 = [v5 allKeysForObject:v9];
    v8 = [v10 firstObject];

    if ((*(a1 + 56) & 1) == 0)
    {
      [v5 removeObjectForKey:v8];
    }
  }

  v11 = [v5 allKeys];
  v12 = [v11 count];
  v13 = [*(a1 + 40) hashedRouteUIDs];
  v14 = [v13 count];

  if (v12 == v14)
  {
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    MRAVEndpointMoveOutputGroupToDevicesFromSource();
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"UID decoding error"];
    if (![*(*(a1 + 40) + 56) length])
    {
      v16 = [*(a1 + 40) aceId];
      v17 = sub_233505670(@"Move Output Group To Devices", v16);
      v18 = *(a1 + 40);
      v19 = *(v18 + 56);
      *(v18 + 56) = v17;
    }

    v20 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(*(a1 + 40) + 56);
      v22 = [v15 dictionary];
      *buf = 138543618;
      v29 = v21;
      v30 = 2114;
      v31 = v22;
      _os_log_impl(&dword_2334D9000, v20, OS_LOG_TYPE_ERROR, "Move Output Group To Devices (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v23 = *(a1 + 48);
    v24 = [v15 dictionary];
    (*(v23 + 16))(v23, v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2334F16AC(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D47208]);
    v5 = [v3 localizedFailureReason];
    v6 = [v4 initWithReason:v5];

    if (![*(*(a1 + 32) + 56) length])
    {
      v7 = [*(a1 + 32) aceId];
      v8 = sub_233505670(@"Move Output Group To Devices", v7);
      v9 = *(a1 + 32);
      v10 = *(v9 + 56);
      *(v9 + 56) = v8;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1 + 32) + 56);
      v13 = [v6 dictionary];
      v24 = 138543618;
      v25 = v12;
      v26 = 2114;
      v27 = v13;
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_2334D9000, v14, v15, "Move Output Group To Devices (completion) <%{public}@>: notifying assistant %{public}@", &v24, 0x16u);
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D475E8]);
    [v6 setRouteResponse:*MEMORY[0x277D48678]];
    if (![*(*(a1 + 32) + 56) length])
    {
      v16 = [*(a1 + 32) aceId];
      v17 = sub_233505670(@"Move Output Group To Devices", v16);
      v18 = *(a1 + 32);
      v19 = *(v18 + 56);
      *(v18 + 56) = v17;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(a1 + 32) + 56);
      v13 = [v6 dictionary];
      v24 = 138543618;
      v25 = v20;
      v26 = 2114;
      v27 = v13;
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  v21 = *(a1 + 40);
  v22 = [v6 dictionary];
  (*(v21 + 16))(v21, v22);

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2334F1CF4(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = sub_2335059A8(a3);
  v7 = 0x277D47218;
  if (!v6)
  {
    v7 = 0x277D47208;
  }

  v8 = objc_alloc_init(*v7);
  if (*(a1 + 48))
  {
    if (![*(*(a1 + 40) + 72) length])
    {
      v9 = [*(a1 + 40) aceId];
      v10 = sub_233505670(@"Music Playback Imminent", v9);
      v11 = *(a1 + 40);
      v12 = *(v11 + 72);
      *(v11 + 72) = v10;
    }

    v13 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*(a1 + 40) + 72);
      v15 = [v8 dictionary];
      v19 = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_DEFAULT, "Music Playback Imminent (perform) <%{public}@>: notifying assistant %{public}@", &v19, 0x16u);
    }

    v16 = *(a1 + 48);
    v17 = [v8 dictionary];
    (*(v16 + 16))(v16, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2334F206C(id *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong(a1[4] + 7, a2);
    objc_storeStrong(a1[4] + 8, a3);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2334F22C4;
    v22[3] = &unk_2789DBA80;
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[4];
    v23 = v9;
    v24 = v10;
    v25 = a1[6];
    [v8 _perform:v22];

    v11 = v23;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"no user identity"];
    if (![*(a1[4] + 9) length])
    {
      v12 = [a1[4] aceId];
      v13 = sub_233505670(@"Music Playback Imminent", v12);
      v14 = a1[4];
      v15 = v14[9];
      v14[9] = v13;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1[4] + 9);
      v18 = [v11 dictionary];
      *buf = 138543618;
      v27 = v17;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Music Playback Imminent (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v19 = a1[6];
    v20 = [v11 dictionary];
    v19[2](v19, v20);

    dispatch_group_leave(a1[5]);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2334F22C4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_leave(v3);
  if (![*(*(a1 + 40) + 72) length])
  {
    v5 = [*(a1 + 40) aceId];
    v6 = sub_233505670(@"Music Playback Imminent", v5);
    v7 = *(a1 + 40);
    v8 = *(v7 + 72);
    *(v7 + 72) = v6;
  }

  v9 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(a1 + 40) + 72);
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_DEFAULT, "Music Playback Imminent (completion) <%{public}@>: done", &v12, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

void sub_2334F262C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2334F2700;
  v6[3] = &unk_2789DBB70;
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v4;
  v11 = *(a1 + 56);
  v5 = v3;
  sub_2334F2700(v6, 0);
}

void sub_2334F2700(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) refId];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2334F27F8;
  v9[3] = &unk_2789DB4E0;
  v10 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v11 = v7;
  v12 = v8;
  v13 = *(a1 + 64);
  [v4 pauseDevicesByUID:v5 withRefId:v6 audioRoutingInfo:a2 source:@"siri" completion:v9];
}

void sub_2334F27F8(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v3)
  {
    v6 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:v3];
    if (![*(*(a1 + 48) + 56) length])
    {
      v7 = [*(a1 + 48) aceId];
      v8 = sub_233505670(@"Pause Playback", v7);
      v9 = *(a1 + 48);
      v10 = *(v9 + 56);
      *(v9 + 56) = v8;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      v16 = *(*(a1 + 48) + 56);
      v17 = [v6 dictionary];
      v21 = 138543618;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_DEFAULT, "Pause Playback (completion) <%{public}@>: notifying assistant %{public}@", &v21, 0x16u);
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D47218]);
    if (![*(*(a1 + 48) + 56) length])
    {
      v12 = [*(a1 + 48) aceId];
      v13 = sub_233505670(@"Pause Playback", v12);
      v14 = *(a1 + 48);
      v15 = *(v14 + 56);
      *(v14 + 56) = v13;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }
  }

  v18 = *(a1 + 56);
  v19 = [v6 dictionary];
  (*(v18 + 16))(v18, v19);

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2334F2DA4(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2334F2EAC;
  v11[3] = &unk_2789DBBC0;
  v6 = (a1 + 72);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *v6;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 80);
  [v4 resolveWithHashedRouteIdentifiers:v5 audioRoutingInfo:a2 completion:v11];
}

void sub_2334F2EAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2334F2F7C;
  v9[3] = &unk_2789DBB98;
  v10 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  [v10 sendCommand:20 toDestination:a2 withOptions:v5 completion:v9];
}

void sub_2334F2F7C(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:@"Rate Media Entity" forKeyedSubscript:@"pluginname"];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
  v7 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceNow];
  v9 = [v7 numberWithDouble:fabs(v8)];
  [v6 setObject:v9 forKeyedSubscript:@"duration"];

  if (v3)
  {
    v10 = objc_alloc(MEMORY[0x277D47208]);
    v11 = [v3 localizedDescription];
    v12 = [v10 initWithReason:v11];

    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
    v13 = [v3 localizedDescription];
    [v6 setObject:v13 forKeyedSubscript:@"errorstring"];

    v5 = v12;
  }

  if (![*(*(a1 + 48) + 56) length])
  {
    v14 = [*(a1 + 48) aceId];
    v15 = sub_233505670(@"Rate Media Entity", v14);
    v16 = *(a1 + 48);
    v17 = *(v16 + 56);
    *(v16 + 56) = v15;
  }

  v18 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 48) + 56);
    v20 = [v5 dictionary];
    *buf = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Rate Media Entity (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 56);
  v22 = [v5 dictionary];
  (*(v21 + 16))(v21, v22);

  v25 = v6;
  v23 = v6;
  AnalyticsSendEventLazy();

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2334F3518(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [a2 mutableCopy];
  v6 = [*(a1 + 40) groupID];
  v7 = [v6 isEqualToString:@"LOCAL_DEVICE"];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) groupID];
    v10 = [v5 allKeysForObject:v9];
    v8 = [v10 firstObject];

    if ((*(a1 + 56) & 1) == 0)
    {
      [v5 removeObjectForKey:v8];
    }
  }

  v11 = [v5 allKeys];
  v12 = [v11 count];
  v13 = [*(a1 + 40) hashedRouteUIDs];
  v14 = [v13 count];

  if (v12 == v14)
  {
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    MRAVEndpointRemoveOutputDevicesFromGroupFromSource();
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"UID decoding error"];
    if (![*(*(a1 + 40) + 56) length])
    {
      v16 = [*(a1 + 40) aceId];
      v17 = sub_233505670(@"Remove Output Devices From Group", v16);
      v18 = *(a1 + 40);
      v19 = *(v18 + 56);
      *(v18 + 56) = v17;
    }

    v20 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(*(a1 + 40) + 56);
      v22 = [v15 dictionary];
      *buf = 138543618;
      v29 = v21;
      v30 = 2114;
      v31 = v22;
      _os_log_impl(&dword_2334D9000, v20, OS_LOG_TYPE_ERROR, "Remove Output Devices From Group (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v23 = *(a1 + 48);
    v24 = [v15 dictionary];
    (*(v23 + 16))(v23, v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2334F3804(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D47208]);
    v5 = [v3 localizedFailureReason];
    v6 = [v4 initWithReason:v5];

    if (![*(*(a1 + 32) + 56) length])
    {
      v7 = [*(a1 + 32) aceId];
      v8 = sub_233505670(@"Remove Output Devices From Group", v7);
      v9 = *(a1 + 32);
      v10 = *(v9 + 56);
      *(v9 + 56) = v8;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1 + 32) + 56);
      v13 = [v6 dictionary];
      v24 = 138543618;
      v25 = v12;
      v26 = 2114;
      v27 = v13;
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_2334D9000, v14, v15, "Remove Output Devices From Group (completion) <%{public}@>: notifying assistant %{public}@", &v24, 0x16u);
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D475F0]);
    [v6 setRouteResponse:*MEMORY[0x277D48678]];
    if (![*(*(a1 + 32) + 56) length])
    {
      v16 = [*(a1 + 32) aceId];
      v17 = sub_233505670(@"Remove Output Devices From Group", v16);
      v18 = *(a1 + 32);
      v19 = *(v18 + 56);
      *(v18 + 56) = v17;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(a1 + 32) + 56);
      v13 = [v6 dictionary];
      v24 = 138543618;
      v25 = v20;
      v26 = 2114;
      v27 = v13;
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  v21 = *(a1 + 40);
  v22 = [v6 dictionary];
  (*(v21 + 16))(v21, v22);

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2334F3E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2334F3E68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_2334F3E80(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void sub_2334F4D58(uint64_t a1, void *a2)
{
  v116 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v4 = [v3 mediaPlayerOrderingTerms];
  v5 = [v4 countByEnumeratingWithState:&v107 objects:v115 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v108;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v108 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v107 + 1) + 8 * i);
        if ([v10 mediaPlayerSearchProperty] == 7)
        {
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          v13 = [v10 mediaPlayerOrderingDirection];
          v14 = [v12 _playlistsByDateCreatedOrder:v13];
          [v11 addObject:v14];

          v7 = 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v107 objects:v115 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = MEMORY[0x277CBEB98];
  v16 = [v3 searchProperties];
  v17 = [v15 setWithArray:v16];

  if (*(a1 + 56))
  {
    if ([v17 containsObject:*MEMORY[0x277D48698]])
    {
      if (![*(*(a1 + 40) + 56) length])
      {
        v18 = [*(a1 + 40) aceId];
        v19 = sub_233505670(@"Search", v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 56);
        *(v20 + 56) = v19;
      }

      v22 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(*(a1 + 40) + 56);
        v24 = [v3 query];
        *buf = 138543619;
        v112 = v23;
        v113 = 2113;
        v114 = v24;
        _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for artist: %{private}@", buf, 0x16u);
      }

      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = [v3 query];
      v28 = [v26 _songCollectionsWithGroupingType:2 searchString:v27 mediaTypes:*(a1 + 56)];
      [v25 addObject:v28];
    }

    if ([v17 containsObject:*MEMORY[0x277D48690]])
    {
      if (![*(*(a1 + 40) + 56) length])
      {
        v29 = [*(a1 + 40) aceId];
        v30 = sub_233505670(@"Search", v29);
        v31 = *(a1 + 40);
        v32 = *(v31 + 56);
        *(v31 + 56) = v30;
      }

      v33 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(*(a1 + 40) + 56);
        v35 = [v3 query];
        *buf = 138543619;
        v112 = v34;
        v113 = 2113;
        v114 = v35;
        _os_log_impl(&dword_2334D9000, v33, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for album: %{private}@", buf, 0x16u);
      }

      v36 = *(a1 + 32);
      v37 = *(a1 + 40);
      v38 = [v3 query];
      v39 = [v37 _songCollectionsWithGroupingType:1 searchString:v38 mediaTypes:*(a1 + 56)];
      [v36 addObject:v39];
    }

    if ([v17 containsObject:*MEMORY[0x277D486A8]])
    {
      if (![*(*(a1 + 40) + 56) length])
      {
        v40 = [*(a1 + 40) aceId];
        v41 = sub_233505670(@"Search", v40);
        v42 = *(a1 + 40);
        v43 = *(v42 + 56);
        *(v42 + 56) = v41;
      }

      v44 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *(*(a1 + 40) + 56);
        v46 = [v3 query];
        *buf = 138543619;
        v112 = v45;
        v113 = 2113;
        v114 = v46;
        _os_log_impl(&dword_2334D9000, v44, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for genre: %{private}@", buf, 0x16u);
      }

      v47 = *(a1 + 32);
      v48 = *(a1 + 40);
      v49 = [v3 query];
      v50 = [v48 _songCollectionsWithGroupingType:5 searchString:v49 mediaTypes:*(a1 + 56)];
      [v47 addObject:v50];
    }

    if ([v17 containsObject:*MEMORY[0x277D486A0]])
    {
      if (![*(*(a1 + 40) + 56) length])
      {
        v51 = [*(a1 + 40) aceId];
        v52 = sub_233505670(@"Search", v51);
        v53 = *(a1 + 40);
        v54 = *(v53 + 56);
        *(v53 + 56) = v52;
      }

      v55 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = *(*(a1 + 40) + 56);
        v57 = [v3 query];
        *buf = 138543619;
        v112 = v56;
        v113 = 2113;
        v114 = v57;
        _os_log_impl(&dword_2334D9000, v55, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for composer: %{private}@", buf, 0x16u);
      }

      v58 = *(a1 + 32);
      v59 = *(a1 + 40);
      v60 = [v3 query];
      v61 = [v59 _songCollectionsWithGroupingType:4 searchString:v60 mediaTypes:*(a1 + 56)];
      [v58 addObject:v61];
    }

    if ([v17 containsObject:*MEMORY[0x277D486B0]])
    {
      if (![*(*(a1 + 40) + 56) length])
      {
        v62 = [*(a1 + 40) aceId];
        v63 = sub_233505670(@"Search", v62);
        v64 = *(a1 + 40);
        v65 = *(v64 + 56);
        *(v64 + 56) = v63;
      }

      v66 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = *(*(a1 + 40) + 56);
        v68 = [v3 query];
        *buf = 138543619;
        v112 = v67;
        v113 = 2113;
        v114 = v68;
        _os_log_impl(&dword_2334D9000, v66, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for title: %{private}@", buf, 0x16u);
      }

      v69 = *(a1 + 32);
      v70 = *(a1 + 40);
      v71 = [v3 query];
      v72 = [v70 _itemsByTitle:v71 mediaTypes:*(a1 + 56)];
      [v69 addObject:v72];
    }
  }

  if (!(v7 & 1 | (([*(a1 + 48) containsObject:*MEMORY[0x277D486D0]] & 1) == 0)))
  {
    if (![*(*(a1 + 40) + 56) length])
    {
      v73 = [*(a1 + 40) aceId];
      v74 = sub_233505670(@"Search", v73);
      v75 = *(a1 + 40);
      v76 = *(v75 + 56);
      *(v75 + 56) = v74;
    }

    v77 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = *(*(a1 + 40) + 56);
      v79 = [v3 query];
      *buf = 138543619;
      v112 = v78;
      v113 = 2113;
      v114 = v79;
      _os_log_impl(&dword_2334D9000, v77, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for playlist: %{private}@", buf, 0x16u);
    }

    v80 = *(a1 + 32);
    v81 = *(a1 + 40);
    v82 = [v3 query];
    v83 = [v81 _playlistsByName:v82 isGeniusMix:0];
    [v80 addObject:v83];
  }

  if ([*(a1 + 48) containsObject:*MEMORY[0x277D486C8]])
  {
    if (![*(*(a1 + 40) + 56) length])
    {
      v84 = [*(a1 + 40) aceId];
      v85 = sub_233505670(@"Search", v84);
      v86 = *(a1 + 40);
      v87 = *(v86 + 56);
      *(v86 + 56) = v85;
    }

    v88 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      v89 = *(*(a1 + 40) + 56);
      v90 = [v3 query];
      *buf = 138543619;
      v112 = v89;
      v113 = 2113;
      v114 = v90;
      _os_log_impl(&dword_2334D9000, v88, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for genius mix: %{private}@", buf, 0x16u);
    }

    v91 = *(a1 + 32);
    v92 = *(a1 + 40);
    v93 = [v3 query];
    v94 = [v92 _playlistsByName:v93 isGeniusMix:1];
    [v91 addObject:v94];
  }

  if ([*(a1 + 48) containsObject:*MEMORY[0x277D486C0]])
  {
    if (![*(*(a1 + 40) + 56) length])
    {
      v95 = [*(a1 + 40) aceId];
      v96 = sub_233505670(@"Search", v95);
      v97 = *(a1 + 40);
      v98 = *(v97 + 56);
      *(v97 + 56) = v96;
    }

    v99 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      v100 = *(*(a1 + 40) + 56);
      v101 = [v3 query];
      *buf = 138543619;
      v112 = v100;
      v113 = 2113;
      v114 = v101;
      _os_log_impl(&dword_2334D9000, v99, OS_LOG_TYPE_DEFAULT, "Search (search) <%{public}@>: search for audiobook: %{private}@", buf, 0x16u);
    }

    v103 = *(a1 + 32);
    v102 = *(a1 + 40);
    v104 = [v3 query];
    v105 = [v102 _audiobooksByName:v104];
    [v103 addObject:v105];
  }

  v106 = *MEMORY[0x277D85DE8];
}

void sub_2334F57EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2334F5890;
  v9[3] = &unk_2789DB5A8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a4;
  [a2 enumerateObjectsUsingBlock:v9];
}

void sub_2334F5890(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) count] >= *(a1 + 40))
  {
    **(a1 + 48) = 1;
  }

  else
  {
    v3 = [v4 SAMPMediaEntityRepresentationUsingIdentifierType:1];
    if (v3)
    {
      [*(a1 + 32) addObject:v3];
    }
  }
}

void sub_2334F5AA8(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    v5 = [*(a1 + 32) _perform];
    if (![*(*(a1 + 32) + 56) length])
    {
      v6 = [*(a1 + 32) aceId];
      v7 = sub_233505670(@"Search", v6);
      v8 = *(a1 + 32);
      v9 = *(v8 + 56);
      *(v8 + 56) = v7;
    }

    v10 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 56);
      v12 = [v5 dictionary];
      v22 = 138543618;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      v13 = "Search (completion) <%{public}@>: notifying assistant: %{public}@";
LABEL_10:
      _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_DEFAULT, v13, &v22, 0x16u);
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"no user identity"];
    if (![*(*(a1 + 32) + 56) length])
    {
      v14 = [*(a1 + 32) aceId];
      v15 = sub_233505670(@"Search", v14);
      v16 = *(a1 + 32);
      v17 = *(v16 + 56);
      *(v16 + 56) = v15;
    }

    v10 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*(a1 + 32) + 56);
      v12 = [v5 dictionary];
      v22 = 138543618;
      v23 = v18;
      v24 = 2114;
      v25 = v12;
      v13 = "Search (completion) <%{public}@>: notifying assistant %{public}@";
      goto LABEL_10;
    }
  }

  v19 = *(a1 + 40);
  v20 = [v5 dictionary];
  (*(v19 + 16))(v19, v20);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2334F603C(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 40);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) hashedRouteUIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2334F6154;
  v11[3] = &unk_2789DBBC0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *v4;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 72);
  [v5 resolveWithHashedRouteIdentifiers:v6 audioRoutingInfo:a2 completion:v11];
}

void sub_2334F6154(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2334F6224;
  v9[3] = &unk_2789DBB98;
  v10 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  [v10 sendCommand:24 toDestination:a2 withOptions:v5 completion:v9];
}

void sub_2334F6224(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:@"Seek To Playback Position" forKeyedSubscript:@"pluginname"];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
  v7 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceNow];
  v9 = [v7 numberWithDouble:fabs(v8)];
  [v6 setObject:v9 forKeyedSubscript:@"duration"];

  if (v3)
  {
    v10 = objc_alloc(MEMORY[0x277D47208]);
    v11 = [v3 localizedDescription];
    v12 = [v10 initWithReason:v11];

    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
    v13 = [v3 localizedDescription];
    [v6 setObject:v13 forKeyedSubscript:@"errorstring"];

    v5 = v12;
  }

  if (![*(*(a1 + 48) + 56) length])
  {
    v14 = [*(a1 + 48) aceId];
    v15 = sub_233505670(@"Seek To Playback Position", v14);
    v16 = *(a1 + 48);
    v17 = *(v16 + 56);
    *(v16 + 56) = v15;
  }

  v18 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 48) + 56);
    v20 = [v5 dictionary];
    *buf = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Seek To Playback Position (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 56);
  v22 = [v5 dictionary];
  (*(v21 + 16))(v21, v22);

  v25 = v6;
  v23 = v6;
  AnalyticsSendEventLazy();

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2334F6DD8(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 40);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) hashedRouteUIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2334F6EF0;
  v11[3] = &unk_2789DBBC0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *v4;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 72);
  [v5 resolveWithHashedRouteIdentifiers:v6 audioRoutingInfo:a2 completion:v11];
}

void sub_2334F6EF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2334F6FC0;
  v9[3] = &unk_2789DBB98;
  v10 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  [v10 sendCommand:19 toDestination:a2 withOptions:v5 completion:v9];
}

void sub_2334F6FC0(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:@"Seek To Playback Speed" forKeyedSubscript:@"pluginname"];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
  v7 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceNow];
  v9 = [v7 numberWithDouble:fabs(v8)];
  [v6 setObject:v9 forKeyedSubscript:@"duration"];

  if (v3)
  {
    v10 = objc_alloc(MEMORY[0x277D47208]);
    v11 = [v3 localizedDescription];
    v12 = [v10 initWithReason:v11];

    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
    v13 = [v3 localizedDescription];
    [v6 setObject:v13 forKeyedSubscript:@"errorstring"];

    v5 = v12;
  }

  if (![*(*(a1 + 48) + 56) length])
  {
    v14 = [*(a1 + 48) aceId];
    v15 = sub_233505670(@"Seek To Playback Speed", v14);
    v16 = *(a1 + 48);
    v17 = *(v16 + 56);
    *(v16 + 56) = v15;
  }

  v18 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 48) + 56);
    v20 = [v5 dictionary];
    *buf = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Seek To Playback Speed (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 56);
  v22 = [v5 dictionary];
  (*(v21 + 16))(v21, v22);

  v25 = v6;
  v23 = v6;
  AnalyticsSendEventLazy();

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2334F750C(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D27828]);
  [*(a1 + 32) setUserIdentity:*(*(a1 + 40) + 72)];
  [*(a1 + 32) setFeatureName:@"siri"];
  v18 = *MEMORY[0x277D27DC0];
  v19[0] = @"com.apple.MediaAssistant.siri";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v6 = [v5 mutableCopy];

  v7 = *(*(a1 + 40) + 80);
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D27DA8]];
  }

  v8 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2334F7A68;
  v13[3] = &unk_2789DB8C8;
  v14 = v4;
  v17 = *(a1 + 56);
  v9 = *(a1 + 48);
  v15 = v3;
  v16 = v9;
  v10 = v3;
  v11 = v4;
  [v11 sendPlaybackQueue:v8 toDestination:v10 withOptions:v6 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334F76C4(id *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  MRAVEndpointGetLocalEndpoint();
  v4 = MRAVEndpointCopyUniqueIdentifier();
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 outputDeviceUIDs];
  LODWORD(v5) = [v7 containsObject:v6];

  if (v5)
  {

LABEL_4:
    if (![*(a1[5] + 11) length])
    {
      v10 = [a1[5] aceId];
      v11 = sub_233505670(@"Set Queue", v10);
      v12 = a1[5];
      v13 = v12[11];
      v12[11] = v11;
    }

    v14 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1[5] + 11);
      *buf = 138543362;
      v38 = v15;
      _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: sending to local WHA destination", buf, 0xCu);
    }

    v16 = *(a1[5] + 7);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2334F7A54;
    v34[3] = &unk_2789DB918;
    v36 = a1[8];
    v35 = a1[6];
    [v16 prepareForAudioHandoffWithCompletion:v34];

    goto LABEL_21;
  }

  v8 = [a1[4] outputDeviceUIDs];
  v9 = [v8 containsObject:v4];

  if (v9)
  {
    goto LABEL_4;
  }

  v17 = [a1[4] outputDeviceUIDs];
  v18 = [v17 count];

  v19 = [*(a1[5] + 11) length];
  if (v18)
  {
    if (!v19)
    {
      v20 = [a1[5] aceId];
      v21 = sub_233505670(@"Set Queue", v20);
      v22 = a1[5];
      v23 = v22[11];
      v22[11] = v21;
    }

    v24 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1[5] + 11);
      *buf = 138543362;
      v38 = v25;
      _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: sending to WHA destination", buf, 0xCu);
    }

    [a1[7] setShouldImmediatelyStartPlayback:1];
  }

  else
  {
    if (!v19)
    {
      v26 = [a1[5] aceId];
      v27 = sub_233505670(@"Set Queue", v26);
      v28 = a1[5];
      v29 = v28[11];
      v28[11] = v27;
    }

    v30 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1[5] + 11);
      *buf = 138543362;
      v38 = v31;
      _os_log_impl(&dword_2334D9000, v30, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: sending to default destination", buf, 0xCu);
    }
  }

  v32 = a1[6];
  (*(a1[8] + 2))();
LABEL_21:

  v33 = *MEMORY[0x277D85DE8];
}

void sub_2334F7A68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v5 && (*(a1 + 56) & 1) != 0)
  {
    notify_post("com.apple.media.entities.siri_data_changed");
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 40);
  v29 = v5;
  v10 = v6;
  v11 = [v29 domain];
  v12 = [v11 isEqualToString:*MEMORY[0x277D277F0]];

  if (v12)
  {
    v13 = [v29 code];
    if (v13)
    {
      if (v13 == 7)
      {
        v14 = objc_alloc(MEMORY[0x277D47208]);
        v15 = MEMORY[0x277D48670];
      }

      else
      {
        if (v13 != 6)
        {
          v21 = MPCAssistantCreateError();
          v22 = objc_alloc(MEMORY[0x277D47208]);
          v23 = [v21 localizedDescription];
          v24 = [v22 initWithReason:v23];

          goto LABEL_21;
        }

        v14 = objc_alloc(MEMORY[0x277D47208]);
        v15 = MEMORY[0x277D48668];
      }

      goto LABEL_19;
    }

LABEL_14:
    v20 = sub_233505AA8(v10);
LABEL_20:
    v24 = v20;
    goto LABEL_21;
  }

  v16 = [v29 domain];
  v17 = [v16 isEqualToString:*MEMORY[0x277D277F8]];

  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = [v29 code];
  if (!v18)
  {
    goto LABEL_14;
  }

  if (v18 == 9)
  {
    v19 = [v9 appBundleID];
    if (MRMediaRemoteApplicationIsSystemMediaApplication())
    {

LABEL_18:
      v14 = objc_alloc(MEMORY[0x277D47208]);
      v15 = MEMORY[0x277D48650];
LABEL_19:
      v20 = [v14 initWithErrorCode:*v15];
      goto LABEL_20;
    }

    v25 = [v9 appBundleID];
    v26 = [v25 isEqualToString:*MEMORY[0x277D27E58]];

    if (v26)
    {
      goto LABEL_18;
    }
  }

  v27 = objc_alloc(MEMORY[0x277D47208]);
  v28 = MRMediaRemoteCopySendCommandErrorDescription();
  v24 = [v27 initWithReason:v28];

LABEL_21:
  (*(v8 + 16))(v8, v24);
}

void sub_2334F7DE8(uint64_t a1, unsigned int a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = [*(*(a1 + 32) + 64) assistantStreamingGetAvailability:a2] == 4;
  v5 = [*(a1 + 40) collections];
  v6 = [v5 firstObject];

  v7 = [v6 representativeItem];
  v8 = [v7 valueForProperty:*MEMORY[0x277CD57C8]];
  v9 = [v8 unsignedIntegerValue];

  if (![*(*(a1 + 32) + 88) length])
  {
    v10 = [*(a1 + 32) aceId];
    v11 = sub_233505670(@"Set Queue", v10);
    v12 = *(a1 + 32);
    v13 = *(v12 + 88);
    *(v12 + 88) = v11;
  }

  v14 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(a1 + 32) + 88);
    v16 = [v6 items];
    *buf = 138543874;
    v47 = v15;
    v48 = 2048;
    v49 = [v16 count];
    v50 = 2112;
    v51 = v6;
    _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: item collection [%ld items] %@", buf, 0x20u);
  }

  v17 = [*(a1 + 32) shouldShuffle];
  [*(a1 + 40) setIgnoreSystemFilterPredicates:1];
  [*(a1 + 40) setShouldIncludeNonLibraryEntities:1];
  v18 = [MEMORY[0x277D27868] queryQueueWithContextID:*(a1 + 48) query:*(a1 + 40)];
  [v18 setShuffleType:v17];
  [v18 setShouldOverrideManuallyCuratedQueue:{objc_msgSend(*(a1 + 32), "shouldOverrideManuallyCuratedUpNext")}];
  v19 = [*(a1 + 32) startPlaying];
  [v18 setShouldImmediatelyStartPlayback:{objc_msgSend(v19, "BOOLValue")}];

  v20 = [*(a1 + 32) recommendationId];
  [v18 setSiriRecommendationID:v20];

  v21 = [*(a1 + 32) assetInfo];
  [v18 setSiriAssetInfo:v21];

  v22 = [*(a1 + 32) MP_WHAMetricsInfo];
  [v18 setSiriWHAMetricsInfo:v22];

  v23 = [MEMORY[0x277D27850] systemMediaApplicationDestination];
  v24 = v23;
  if ((v9 & 4) != 0)
  {
    [v23 setAppBundleID:@"com.apple.iBooks"];
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2334F825C;
  v38[3] = &unk_2789DB850;
  v25 = v24;
  v39 = v25;
  v26 = v18;
  v27 = *(a1 + 32);
  v40 = v26;
  v41 = v27;
  v43 = v4;
  v44 = a2;
  v42 = *(a1 + 56);
  v45 = *(a1 + 64);
  v28 = MEMORY[0x2383A14D0](v38);
  v29 = [*(a1 + 40) items];
  v30 = [v29 firstObject];
  v31 = [v30 valueForProperty:*MEMORY[0x277CD5780]];
  v32 = [v31 BOOLValue];

  if (v32)
  {
    v33 = [MEMORY[0x277D7FA28] defaultManager];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2334F8348;
    v35[3] = &unk_2789DB878;
    v35[4] = *(a1 + 32);
    v36 = *(a1 + 56);
    v37 = v28;
    [v33 getAgeVerificationStateWithCompletion:v35];
  }

  else
  {
    v28[2](v28);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_2334F825C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) hashedRouteUIDs];
  v5 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2334F84C8;
  v7[3] = &unk_2789DB6C0;
  v6 = *(a1 + 56);
  v7[4] = *(a1 + 48);
  v10 = v5;
  v9 = v6;
  v11 = *(a1 + 69);
  v8 = *(a1 + 40);
  [v2 resolveWithQueue:v3 hashedRouteIdentifiers:v4 localPlaybackPermitted:v5 audioRoutingInfo:*(a1 + 65) completion:v7];
}

void sub_2334F8348(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![*(*(a1 + 32) + 88) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Set Queue", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 88);
    *(v6 + 88) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 88);
    v14 = 138543618;
    v15 = v9;
    v16 = 1024;
    v17 = [v3 isExplicitContentAllowed];
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: explicit content allowed: %{BOOL}u", &v14, 0x12u);
  }

  if ([v3 isExplicitContentAllowed])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = objc_alloc(MEMORY[0x277D47208]);
    v12 = [v11 initWithErrorCode:*MEMORY[0x277D48590]];
    (*(v10 + 16))(v10, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2334F84C8(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    if (![*(*(a1 + 32) + 88) length])
    {
      v4 = [*(a1 + 32) aceId];
      v5 = sub_233505670(@"Set Queue", v4);
      v6 = *(a1 + 32);
      v7 = *(v6 + 88);
      *(v6 + 88) = v5;
    }

    v8 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(a1 + 32) + 88);
      v10 = *(a1 + 56);
      v17 = 138543618;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_ERROR, "Set Queue (local) <%{public}@>: destination not available, local allowed %{BOOL}u", &v17, 0x12u);
    }

    v11 = *(a1 + 48);
    v12 = objc_alloc(MEMORY[0x277D47208]);
    v13 = [v12 initWithErrorCode:*MEMORY[0x277D485A0]];
    (*(v11 + 16))(v11, v13);
  }

  if (*(a1 + 57))
  {
    v14 = *(a1 + 48);
    v15 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(v14 + 16))(v14, v15);
  }

  else
  {
    [*(a1 + 32) sendQueue:*(a1 + 40) toDestination:v3 shouldResync:1 completion:*(a1 + 48)];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2334F8844(uint64_t a1, unsigned int a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v4 = [*(*(a1 + 32) + 64) assistantStreamingGetAvailability:a2] == 4;
  v5 = [*(a1 + 40) items];
  v6 = [v5 objectAtIndex:0];

  v7 = [v6 valueForProperty:*MEMORY[0x277CD57C8]];
  v70 = [v7 unsignedIntegerValue];

  v8 = *MEMORY[0x277CD5858];
  v9 = [v6 valueForProperty:*MEMORY[0x277CD5858]];
  v10 = *MEMORY[0x277CD5890];
  v11 = [v6 valueForProperty:*MEMORY[0x277CD5890]];
  v12 = *MEMORY[0x277CD56D0];
  v13 = [v6 valueForProperty:*MEMORY[0x277CD56D0]];
  v72 = v4;
  if ([v9 length])
  {
    if (![*(*(a1 + 32) + 88) length])
    {
      v14 = [*(a1 + 32) aceId];
      v15 = sub_233505670(@"Set Queue", v14);
      v16 = *(a1 + 32);
      v17 = *(v16 + 88);
      *(v16 + 88) = v15;
    }

    v18 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(a1 + 32) + 88);
      *buf = 138543618;
      v85 = v19;
      v86 = 2114;
      v87 = v9;
      _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: found cloud album %{public}@", buf, 0x16u);
    }
  }

  else if ([v11 longLongValue])
  {
    if (![*(*(a1 + 32) + 88) length])
    {
      v20 = [*(a1 + 32) aceId];
      v21 = sub_233505670(@"Set Queue", v20);
      v22 = *(a1 + 32);
      v23 = *(v22 + 88);
      *(v22 + 88) = v21;
    }

    v18 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(*(a1 + 32) + 88);
      *buf = 138543618;
      v85 = v24;
      v86 = 2114;
      v87 = v11;
      _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: found store album %{public}@", buf, 0x16u);
    }

    v8 = v10;
  }

  else
  {
    if (![v13 length])
    {
      goto LABEL_32;
    }

    if (![*(*(a1 + 32) + 88) length])
    {
      v25 = [*(a1 + 32) aceId];
      v26 = sub_233505670(@"Set Queue", v25);
      v27 = *(a1 + 32);
      v28 = *(v27 + 88);
      *(v27 + 88) = v26;
    }

    v18 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(*(a1 + 32) + 88);
      *buf = 138543618;
      v85 = v29;
      v86 = 2114;
      v87 = v13;
      _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: found album title %{public}@", buf, 0x16u);
    }

    v8 = v12;
  }

  v30 = objc_alloc_init(MEMORY[0x277CD5E38]);
  v31 = [v6 predicateForProperty:v8];
  [v30 addFilterPredicate:v31];

  if (v30)
  {
    if (*(*(a1 + 32) + 72))
    {
      v32 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:?];
      [v30 setMediaLibrary:v32];
    }

    [v30 setIgnoreSystemFilterPredicates:1];
    [v30 setShouldIncludeNonLibraryEntities:1];
    [v30 setGroupingType:1];
    if ([v30 _hasCollections] && (objc_msgSend(v30, "collections"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "count"), v33, v34 == 1))
    {
      v69 = v13;
      v35 = [*(a1 + 32) shouldShuffle];
      v36 = [MEMORY[0x277D27868] queryQueueWithContextID:*(a1 + 48) query:v30];
      [v36 setFirstItem:v6];
      [v36 setShuffleType:v35];
      [v36 setShouldOverrideManuallyCuratedQueue:{objc_msgSend(*(a1 + 32), "shouldOverrideManuallyCuratedUpNext")}];
      v37 = [*(a1 + 32) startPlaying];
      [v36 setShouldImmediatelyStartPlayback:{objc_msgSend(v37, "BOOLValue")}];

      v38 = [*(a1 + 32) recommendationId];
      [v36 setSiriRecommendationID:v38];

      v39 = [*(a1 + 32) assetInfo];
      [v36 setSiriAssetInfo:v39];

      v40 = [*(a1 + 32) MP_WHAMetricsInfo];
      [v36 setSiriWHAMetricsInfo:v40];

      v41 = [MEMORY[0x277D27850] systemMediaApplicationDestination];
      v42 = v41;
      if ((v70 & 4) != 0)
      {
        [v41 setAppBundleID:@"com.apple.iBooks"];
      }

      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = sub_2334F9124;
      v76[3] = &unk_2789DB850;
      v71 = v42;
      v77 = v71;
      v43 = v36;
      v44 = *(a1 + 32);
      v68 = v43;
      v78 = v43;
      v79 = v44;
      v81 = v72;
      v82 = a2;
      v80 = *(a1 + 56);
      v83 = *(a1 + 64);
      v45 = MEMORY[0x2383A14D0](v76);
      v46 = [v30 items];
      v47 = [v46 firstObject];
      v48 = [v47 valueForProperty:*MEMORY[0x277CD5780]];
      v49 = [v48 BOOLValue];

      if (v49)
      {
        v50 = [MEMORY[0x277D7FA28] defaultManager];
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = sub_2334F9210;
        v73[3] = &unk_2789DB878;
        v73[4] = *(a1 + 32);
        v74 = *(a1 + 56);
        v75 = v45;
        [v50 getAgeVerificationStateWithCompletion:v73];
      }

      else
      {
        v45[2](v45);
      }

      v13 = v69;
    }

    else
    {
      if (![*(*(a1 + 32) + 88) length])
      {
        [*(a1 + 32) aceId];
        v51 = v11;
        v53 = v52 = v13;
        v54 = sub_233505670(@"Set Queue", v53);
        v55 = *(a1 + 32);
        v56 = *(v55 + 88);
        *(v55 + 88) = v54;

        v13 = v52;
        v11 = v51;
      }

      v57 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(*(a1 + 32) + 88);
        *buf = 138543362;
        v85 = v58;
        _os_log_impl(&dword_2334D9000, v57, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: enqueueing reference item", buf, 0xCu);
      }

      (*(*(a1 + 56) + 16))();
    }

    goto LABEL_40;
  }

LABEL_32:
  if (![*(*(a1 + 32) + 88) length])
  {
    [*(a1 + 32) aceId];
    v59 = v11;
    v61 = v60 = v13;
    v62 = sub_233505670(@"Set Queue", v61);
    v63 = *(a1 + 32);
    v64 = *(v63 + 88);
    *(v63 + 88) = v62;

    v13 = v60;
    v11 = v59;
  }

  v65 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v66 = *(*(a1 + 32) + 88);
    *buf = 138543362;
    v85 = v66;
    _os_log_impl(&dword_2334D9000, v65, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: enqueueing reference item", buf, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
LABEL_40:

  v67 = *MEMORY[0x277D85DE8];
}

void sub_2334F9124(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) hashedRouteUIDs];
  v5 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2334F9390;
  v7[3] = &unk_2789DB6C0;
  v6 = *(a1 + 56);
  v7[4] = *(a1 + 48);
  v10 = v5;
  v9 = v6;
  v11 = *(a1 + 69);
  v8 = *(a1 + 40);
  [v2 resolveWithQueue:v3 hashedRouteIdentifiers:v4 localPlaybackPermitted:v5 audioRoutingInfo:*(a1 + 65) completion:v7];
}

void sub_2334F9210(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![*(*(a1 + 32) + 88) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Set Queue", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 88);
    *(v6 + 88) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 88);
    v14 = 138543618;
    v15 = v9;
    v16 = 1024;
    v17 = [v3 isExplicitContentAllowed];
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: explicit content allowed: %{BOOL}u", &v14, 0x12u);
  }

  if ([v3 isExplicitContentAllowed])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = objc_alloc(MEMORY[0x277D47208]);
    v12 = [v11 initWithErrorCode:*MEMORY[0x277D48590]];
    (*(v10 + 16))(v10, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2334F9390(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    if (![*(*(a1 + 32) + 88) length])
    {
      v4 = [*(a1 + 32) aceId];
      v5 = sub_233505670(@"Set Queue", v4);
      v6 = *(a1 + 32);
      v7 = *(v6 + 88);
      *(v6 + 88) = v5;
    }

    v8 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(a1 + 32) + 88);
      v10 = *(a1 + 56);
      v17 = 138543618;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_ERROR, "Set Queue (local) <%{public}@>: destination not available, local allowed %{BOOL}u", &v17, 0x12u);
    }

    v11 = *(a1 + 48);
    v12 = objc_alloc(MEMORY[0x277D47208]);
    v13 = [v12 initWithErrorCode:*MEMORY[0x277D485A0]];
    (*(v11 + 16))(v11, v13);
  }

  if (*(a1 + 57))
  {
    v14 = *(a1 + 48);
    v15 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(v14 + 16))(v14, v15);
  }

  else
  {
    [*(a1 + 32) sendQueue:*(a1 + 40) toDestination:v3 shouldResync:1 completion:*(a1 + 48)];
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2334FA878(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2334FA890(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(*(*(a1 + 56) + 8) + 40) items];
  v3 = [v2 count];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = *(*(*(a1 + 56) + 8) + 40);
    v6 = *(a1 + 64);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2334FAAA0;
    v17[3] = &unk_2789DB800;
    v7 = *(a1 + 40);
    v18 = *(a1 + 48);
    [v4 _playMediaItems:v5 contextID:v7 dryRun:v6 completion:v17];
    v8 = v18;
  }

  else
  {
    if (![v4[11] length])
    {
      v9 = [*(a1 + 32) aceId];
      v10 = sub_233505670(@"Set Queue", v9);
      v11 = *(a1 + 32);
      v12 = *(v11 + 88);
      *(v11 + 88) = v10;
    }

    v13 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1 + 32) + 88);
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no for you cache", buf, 0xCu);
    }

    v15 = *(a1 + 48);
    v8 = objc_alloc_init(MEMORY[0x277D47208]);
    (*(v15 + 16))(v15, 1, v8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2334FAA74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

void sub_2334FAB84(uint64_t a1, uint64_t a2)
{
  v121 = *MEMORY[0x277D85DE8];
  v4 = [*(*(a1 + 32) + 64) assistantStreamingGetAvailability:a2];
  if (v4 != 1)
  {
    if (!*(a1 + 40))
    {
      if (![*(*(a1 + 32) + 88) length])
      {
        v40 = [*(a1 + 32) aceId];
        v41 = sub_233505670(@"Set Queue", v40);
        v42 = *(a1 + 32);
        v43 = *(v42 + 88);
        *(v42 + 88) = v41;
      }

      v44 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = *(*(a1 + 32) + 88);
        *buf = 138543362;
        v117 = v45;
        _os_log_impl(&dword_2334D9000, v44, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no media items requested", buf, 0xCu);
      }

      v11 = *(a1 + 48);
      v12 = objc_alloc(MEMORY[0x277D47208]);
      v13 = MEMORY[0x277D48648];
      goto LABEL_31;
    }

    v99 = a2;
    v101 = v4;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v15 = [*(a1 + 40) items];
    v16 = [v15 countByEnumeratingWithState:&v112 objects:v120 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v113;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v113 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v112 + 1) + 8 * i) identifier];
          v21 = sub_23350261C(v20);
          if (v21 == 3)
          {
            v22 = [v20 lastPathComponent];
            v23 = [v22 longLongValue];

            if (!v23)
            {
              goto LABEL_21;
            }

            v24 = [MEMORY[0x277CCABB0] numberWithLongLong:v23];
            [v14 addObject:v24];
          }

          else
          {
            v25 = v21;
            if (![*(*(a1 + 32) + 88) length])
            {
              v26 = [*(a1 + 32) aceId];
              v27 = sub_233505670(@"Set Queue", v26);
              v28 = *(a1 + 32);
              v29 = *(v28 + 88);
              *(v28 + 88) = v27;
            }

            v24 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v30 = *(*(a1 + 32) + 88);
              *buf = 138543618;
              v117 = v30;
              v118 = 2048;
              v119 = v25;
              _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: content origin %ld", buf, 0x16u);
            }
          }

LABEL_21:
        }

        v17 = [v15 countByEnumeratingWithState:&v112 objects:v120 count:16];
      }

      while (v17);
    }

    v31 = v14;
    if ([v14 count] || (objc_msgSend(*(a1 + 40), "identifier"), v51 = objc_claimAutoreleasedReturnValue(), v51, !v51))
    {
      v32 = [*(a1 + 40) identifier];
      v33 = [v32 scheme];
      v34 = [v33 isEqualToString:@"x-sampplaylist"];

      v35 = 0x27DE0E000;
      if (v34)
      {
        v36 = objc_alloc(MEMORY[0x277CD5DA0]);
        v37 = [MEMORY[0x277CD5F08] identityKind];
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = sub_2334FB6AC;
        v110[3] = &unk_2789DB7B0;
        v111 = *(a1 + 40);
        v38 = [v36 initWithSource:@"MPCAssistant" modelKind:v37 block:v110];

        v39 = v111;
      }

      else
      {
        v46 = [*(a1 + 40) identifier];
        v47 = [v46 scheme];
        v48 = [v47 isEqualToString:@"x-sampcollection-album"];

        if (!v48)
        {
          v38 = 0;
LABEL_41:
          v60 = [v14 count];
          v61 = *(v35 + 1468);
          v62 = [*(*(a1 + 32) + v61) length];
          if (!v60)
          {
            if (!v62)
            {
              v81 = [*(a1 + 32) aceId];
              v82 = sub_233505670(@"Set Queue", v81);
              v83 = *(a1 + 32);
              v84 = *(v83 + v61);
              *(v83 + v61) = v82;
            }

            v85 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              v86 = *(*(a1 + 32) + v61);
              v87 = [*(a1 + 40) items];
              *buf = 138543618;
              v117 = v86;
              v118 = 2114;
              v119 = v87;
              _os_log_impl(&dword_2334D9000, v85, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no playable items in %{public}@", buf, 0x16u);
            }

            v88 = *(a1 + 48);
            v89 = objc_alloc(MEMORY[0x277D47208]);
            v70 = [v89 initWithErrorCode:*MEMORY[0x277D48648]];
            (*(v88 + 16))(v88, v70);
            goto LABEL_62;
          }

          if (!v62)
          {
            v63 = [*(a1 + 32) aceId];
            v64 = sub_233505670(@"Set Queue", v63);
            v65 = *(a1 + 32);
            v66 = *(v65 + v61);
            *(v65 + v61) = v64;
          }

          v67 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = *(*(a1 + 32) + v61);
            *buf = 138543618;
            v117 = v68;
            v118 = 2114;
            v119 = v14;
            _os_log_impl(&dword_2334D9000, v67, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: queue from store identifers: %{public}@", buf, 0x16u);
          }

          v69 = [*(a1 + 32) shouldShuffle];
          v70 = [*(a1 + 32) refId];
          v71 = [MEMORY[0x277D27888] storeTracklistQueueWithContextID:v70 storeItemIDs:v14 collectionIdentifierSet:v38];
          [v71 setShuffleType:v69];
          [v71 setShouldOverrideManuallyCuratedQueue:{objc_msgSend(*(a1 + 32), "shouldOverrideManuallyCuratedUpNext")}];
          v72 = [*(a1 + 32) startPlaying];
          [v71 setShouldImmediatelyStartPlayback:{objc_msgSend(v72, "BOOLValue")}];

          v73 = [*(a1 + 32) recommendationId];
          [v71 setSiriRecommendationID:v73];

          v74 = [*(a1 + 32) assetInfo];
          [v71 setSiriAssetInfo:v74];

          v75 = [*(a1 + 32) MP_WHAMetricsInfo];
          [v71 setSiriWHAMetricsInfo:v75];

          v102[0] = MEMORY[0x277D85DD0];
          v102[1] = 3221225472;
          v102[2] = sub_2334FB7C4;
          v102[3] = &unk_2789DB7D8;
          v76 = v71;
          v77 = *(a1 + 32);
          v103 = v76;
          v104 = v77;
          v106 = v100;
          v105 = *(a1 + 48);
          v107 = *(a1 + 56);
          v78 = MEMORY[0x2383A14D0](v102);
          v79 = v78;
          if (v101 == 3)
          {
            v80 = *(v78 + 16);
          }

          else
          {
            if (v101 != 4)
            {
              if (![*(*(a1 + 32) + v61) length])
              {
                v90 = [*(a1 + 32) aceId];
                v91 = sub_233505670(@"Set Queue", v90);
                v92 = *(a1 + 32);
                v93 = *(v92 + v61);
                *(v92 + v61) = v91;
              }

              v94 = _MPLogCategoryAssistant();
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                v95 = *(*(a1 + 32) + v61);
                *buf = 138543362;
                v117 = v95;
                _os_log_impl(&dword_2334D9000, v94, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: remapping not supported", buf, 0xCu);
              }

              v96 = *(a1 + 48);
              v97 = objc_alloc_init(MEMORY[0x277D47208]);
              (*(v96 + 16))(v96, v97);

              goto LABEL_61;
            }

            v80 = *(v78 + 16);
          }

          v80();
LABEL_61:

LABEL_62:
          goto LABEL_63;
        }

        v49 = objc_alloc(MEMORY[0x277CD5DA0]);
        v50 = [MEMORY[0x277CD5E48] identityKind];
        v108[0] = MEMORY[0x277D85DD0];
        v108[1] = 3221225472;
        v108[2] = sub_2334FB738;
        v108[3] = &unk_2789DB7B0;
        v109 = *(a1 + 40);
        v38 = [v49 initWithSource:@"MPCAssistant" modelKind:v50 block:v108];

        v39 = v109;
      }
    }

    else
    {
      v35 = 0x27DE0E000uLL;
      if (![*(*(a1 + 32) + 88) length])
      {
        v52 = [*(a1 + 32) aceId];
        v53 = sub_233505670(@"Set Queue", v52);
        v54 = *(a1 + 32);
        v55 = *(v54 + 88);
        *(v54 + 88) = v53;
      }

      v56 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = *(*(a1 + 32) + 88);
        v58 = [*(a1 + 40) identifier];
        *buf = 138543618;
        v117 = v57;
        v118 = 2114;
        v119 = v58;
        _os_log_impl(&dword_2334D9000, v56, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: using collection identifier %{public}@", buf, 0x16u);
      }

      v39 = [*(a1 + 40) identifier];
      v59 = [v39 lastPathComponent];
      [v14 addObject:v59];

      v38 = 0;
    }

    goto LABEL_41;
  }

  if (![*(*(a1 + 32) + 88) length])
  {
    v5 = [*(a1 + 32) aceId];
    v6 = sub_233505670(@"Set Queue", v5);
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = v6;
  }

  v9 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *(*(a1 + 32) + 88);
    *buf = 138543362;
    v117 = v10;
    _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: network unavailable", buf, 0xCu);
  }

  v11 = *(a1 + 48);
  v12 = objc_alloc(MEMORY[0x277D47208]);
  v13 = MEMORY[0x277D485A8];
LABEL_31:
  v31 = [v12 initWithErrorCode:*v13];
  (*(v11 + 16))(v11, v31);
LABEL_63:

  v98 = *MEMORY[0x277D85DE8];
}

void sub_2334FB6AC(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2334FBAD4;
  v3[3] = &unk_2789DB788;
  v4 = *(a1 + 32);
  [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

void sub_2334FB738(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2334FBA5C;
  v3[3] = &unk_2789DB788;
  v4 = *(a1 + 32);
  [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

void sub_2334FB7C4(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D27878] systemMediaApplicationDestination];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) hashedRouteUIDs];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2334FB8C0;
  v8[3] = &unk_2789DB8F0;
  v7 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v10 = v7;
  v11 = *(a1 + 60);
  v9 = *(a1 + 32);
  [v4 resolveWithQueue:v5 hashedRouteIdentifiers:v6 localPlaybackPermitted:a2 audioRoutingInfo:*(a1 + 56) completion:v8];
}

void sub_2334FB8C0(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    if (![*(*(a1 + 32) + 88) length])
    {
      v4 = [*(a1 + 32) aceId];
      v5 = sub_233505670(@"Set Queue", v4);
      v6 = *(a1 + 32);
      v7 = *(v6 + 88);
      *(v6 + 88) = v5;
    }

    v8 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(a1 + 32) + 88);
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: destination not available, local allowed YES", &v16, 0xCu);
    }

    v10 = *(a1 + 48);
    v11 = objc_alloc(MEMORY[0x277D47208]);
    v12 = [v11 initWithErrorCode:*MEMORY[0x277D485A0]];
    (*(v10 + 16))(v10, v12);
  }

  if (*(a1 + 56))
  {
    v13 = *(a1 + 48);
    v14 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(v13 + 16))(v13, v14);
  }

  else
  {
    [*(a1 + 32) sendQueue:*(a1 + 40) toDestination:v3 shouldResync:0 completion:*(a1 + 48)];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2334FBA5C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 identifier];
  v4 = [v5 lastPathComponent];
  [v3 setSubscriptionAdamID:{objc_msgSend(v4, "longLongValue")}];
}

void sub_2334FBAD4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 identifier];
  v4 = [v5 lastPathComponent];
  [v3 setGlobalPlaylistID:v4];
}

void sub_2334FBE48(uint64_t a1)
{
  v10 = *(a1 + 32);
  v2 = [*(a1 + 40) scheme];
  v3 = [v2 isEqualToString:@"x-sampplaylist"];

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(v5 + 72);
  if (v3)
  {
    [v4 MPMediaItemQueryOnlyPlayableItems:1 withUserIdentity:*(v5 + 72) plugin:@"Set Queue" hash:*(v5 + 88)];
    v10 = v7 = v10;
  }

  else
  {
    v7 = [v4 albumQueryByGroupingForSchemeWithUserIdentity:*(v5 + 72) plugin:@"Set Queue" hash:*(v5 + 88)];
    v8 = [v7 collections];
    v9 = [v8 count];

    if (v9 == 1)
    {
      v7 = v7;

      [*(a1 + 56) setShouldShuffle:0];
      v10 = v7;
    }
  }

  [*(a1 + 56) _playMediaItems:v10 contextID:*(a1 + 64) dryRun:*(a1 + 80) completion:*(a1 + 72)];
}

uint64_t sub_2334FBF74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

void sub_2334FC074(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2334FC144;
  v6[3] = &unk_2789DB6E8;
  v6[4] = v4;
  v8 = *(a1 + 48);
  v7 = *(a1 + 40);
  v9 = a2;
  v10 = *(a1 + 56);
  [v5 assistantRadioGetAvailability:a2 completion:v6];
}

void sub_2334FC144(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  switch(a2)
  {
    case 0:
      if (![v3[11] length])
      {
        v21 = [*(a1 + 32) aceId];
        v22 = sub_233505670(@"Set Queue", v21);
        v23 = *(a1 + 32);
        v24 = *(v23 + 88);
        *(v23 + 88) = v22;
      }

      v25 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *(*(a1 + 32) + 88);
        *buf = 138543362;
        v62 = v26;
        _os_log_impl(&dword_2334D9000, v25, OS_LOG_TYPE_ERROR, "Set Queue (radio) <%{public}@>: radio unavailable", buf, 0xCu);
      }

      v11 = *(a1 + 48);
      v12 = objc_alloc(MEMORY[0x277D47208]);
      v13 = MEMORY[0x277D48660];
      goto LABEL_19;
    case 2:
      if (![v3[11] length])
      {
        v14 = [*(a1 + 32) aceId];
        v15 = sub_233505670(@"Set Queue", v14);
        v16 = *(a1 + 32);
        v17 = *(v16 + 88);
        *(v16 + 88) = v15;
      }

      v18 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(a1 + 32) + 88);
        *buf = 138543362;
        v62 = v19;
        _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_ERROR, "Set Queue (radio) <%{public}@>: companion unavailable", buf, 0xCu);
      }

      v11 = *(a1 + 48);
      v20 = objc_alloc_init(MEMORY[0x277D47208]);
      goto LABEL_20;
    case 1:
      if (![v3[11] length])
      {
        v5 = [*(a1 + 32) aceId];
        v6 = sub_233505670(@"Set Queue", v5);
        v7 = *(a1 + 32);
        v8 = *(v7 + 88);
        *(v7 + 88) = v6;
      }

      v9 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(*(a1 + 32) + 88);
        *buf = 138543362;
        v62 = v10;
        _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_ERROR, "Set Queue (radio) <%{public}@>: network unavailable", buf, 0xCu);
      }

      v11 = *(a1 + 48);
      v12 = objc_alloc(MEMORY[0x277D47208]);
      v13 = MEMORY[0x277D485A8];
LABEL_19:
      v20 = [v12 initWithErrorCode:*v13];
LABEL_20:
      v27 = v20;
      (*(v11 + 16))(v11, v20);
      goto LABEL_33;
  }

  v27 = [v3 refId];
  v28 = [*(a1 + 40) lastPathComponent];
  if (v28)
  {
    v29 = [MEMORY[0x277D27870] radioQueueWithContextID:v27 stationStringID:v28];
    v30 = [*(a1 + 32) startPlaying];
    [v29 setShouldImmediatelyStartPlayback:{objc_msgSend(v30, "BOOLValue")}];

    [v29 setShouldOverrideManuallyCuratedQueue:{objc_msgSend(*(a1 + 32), "shouldOverrideManuallyCuratedUpNext")}];
    v31 = [*(a1 + 32) recommendationId];
    [v29 setSiriRecommendationID:v31];

    v32 = [*(a1 + 32) assetInfo];
    [v29 setSiriAssetInfo:v32];

    v33 = [*(a1 + 32) MP_WHAMetricsInfo];
    [v29 setSiriWHAMetricsInfo:v33];

    v34 = a2 == 4;
    if (![*(*(a1 + 32) + 88) length])
    {
      v35 = [*(a1 + 32) aceId];
      v36 = sub_233505670(@"Set Queue", v35);
      v37 = *(a1 + 32);
      v38 = *(v37 + 88);
      *(v37 + 88) = v36;
    }

    v39 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(*(a1 + 32) + 88);
      *buf = 138543618;
      v62 = v40;
      v63 = 2114;
      v64 = v28;
      _os_log_impl(&dword_2334D9000, v39, OS_LOG_TYPE_DEFAULT, "Set Queue (radio) <%{public}@>: station %{public}@", buf, 0x16u);
    }

    v41 = a2 == 4;

    v42 = [MEMORY[0x277D27878] systemMediaApplicationDestination];
    v43 = [*(a1 + 32) hashedRouteUIDs];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_2334FC778;
    v56[3] = &unk_2789DB6C0;
    v56[4] = *(a1 + 32);
    v59 = v34;
    v44 = *(a1 + 48);
    v60 = *(a1 + 60);
    v57 = v29;
    v58 = v44;
    v45 = *(a1 + 56);
    v46 = v29;
    [v42 resolveWithQueue:v46 hashedRouteIdentifiers:v43 localPlaybackPermitted:v41 audioRoutingInfo:v45 completion:v56];
  }

  else
  {
    if (![*(*(a1 + 32) + 88) length])
    {
      v47 = [*(a1 + 32) aceId];
      v48 = sub_233505670(@"Set Queue", v47);
      v49 = *(a1 + 32);
      v50 = *(v49 + 88);
      *(v49 + 88) = v48;
    }

    v51 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = *(a1 + 40);
      v53 = *(*(a1 + 32) + 88);
      *buf = 138543618;
      v62 = v53;
      v63 = 2114;
      v64 = v52;
      _os_log_impl(&dword_2334D9000, v51, OS_LOG_TYPE_ERROR, "Set Queue (radio) <%{public}@>: no radio identifier %{public}@", buf, 0x16u);
    }

    v54 = *(a1 + 48);
    v42 = objc_alloc_init(MEMORY[0x277D47208]);
    (*(v54 + 16))(v54, v42);
  }

LABEL_33:
  v55 = *MEMORY[0x277D85DE8];
}

void sub_2334FC778(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    if (![*(*(a1 + 32) + 88) length])
    {
      v4 = [*(a1 + 32) aceId];
      v5 = sub_233505670(@"Set Queue", v4);
      v6 = *(a1 + 32);
      v7 = *(v6 + 88);
      *(v6 + 88) = v5;
    }

    v8 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(a1 + 32) + 88);
      v10 = *(a1 + 56);
      v17 = 138543618;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_ERROR, "Set Queue (radio) <%{public}@>: destination not available, local allowed %{BOOL}u", &v17, 0x12u);
    }

    v11 = *(a1 + 48);
    v12 = objc_alloc(MEMORY[0x277D47208]);
    v13 = [v12 initWithErrorCode:*MEMORY[0x277D485A0]];
    (*(v11 + 16))(v11, v13);
  }

  if (*(a1 + 57))
  {
    v14 = *(a1 + 48);
    v15 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(v14 + 16))(v14, v15);
  }

  else
  {
    [*(a1 + 32) sendQueue:*(a1 + 40) toDestination:v3 shouldResync:0 completion:*(a1 + 48)];
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2334FD034(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (![*(*(a1 + 32) + 88) length])
    {
      v3 = [*(a1 + 32) aceId];
      v4 = sub_233505670(@"Set Queue", v3);
      v5 = *(a1 + 32);
      v6 = *(v5 + 88);
      *(v5 + 88) = v4;
    }

    v7 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = v8[11];
      v11 = [v8 dryRun];
      v12 = &stru_2848D4AE0;
      v18 = 138543874;
      v19 = v10;
      v20 = 2114;
      if (v11)
      {
        v12 = @" ⚠️ DRY RUN";
      }

      v21 = v9;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_DEFAULT, "Set Queue (localstore) <%{public}@>: search failed, use identifier %{public}@%{public}@", &v18, 0x20u);
    }

    result = [*(a1 + 32) _performStoreItemsSetQueueAsDryRun:objc_msgSend(*(a1 + 32) completion:{"dryRun"), *(a1 + 48)}];
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = *(a1 + 48);
    v16 = *(*(a1 + 48) + 16);
    v17 = *MEMORY[0x277D85DE8];

    return v16();
  }

  return result;
}

void sub_2334FD4DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[11];
  v4 = [v2 requesterSharedUserId];
  v5 = [*(a1 + 32) sharedUserIdFromPlayableMusicAccount];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2334FD5B8;
  v7[3] = &unk_2789DB648;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  sub_233506A24(@"Set Queue", v3, v4, v5, v7);
}

void sub_2334FD5B8(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 72), a2);
    objc_storeStrong((*(a1 + 32) + 80), a3);
    v8 = *(a1 + 32);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2334FD7FC;
    v20[3] = &unk_2789DB620;
    v20[4] = v8;
    v21 = *(a1 + 40);
    [v8 _performWithCompletion:v20];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"no user identity"];
    if (![*(*(a1 + 32) + 88) length])
    {
      v10 = [*(a1 + 32) aceId];
      v11 = sub_233505670(@"Set Queue", v10);
      v12 = *(a1 + 32);
      v13 = *(v12 + 88);
      *(v12 + 88) = v11;
    }

    v14 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(a1 + 32) + 88);
      v16 = [v9 dictionary];
      *buf = 138543618;
      v23 = v15;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Set Queue (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v17 = *(a1 + 40);
    v18 = [v9 dictionary];
    (*(v17 + 16))(v17, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2334FD7FC(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![*(*(a1 + 32) + 88) length])
  {
    v4 = [*(a1 + 32) aceId];
    v5 = sub_233505670(@"Set Queue", v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 88);
    *(v6 + 88) = v5;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 88);
    v10 = [v3 dictionary];
    v14 = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Set Queue (completion) <%{public}@>: notifying assistant %{public}@", &v14, 0x16u);
  }

  v11 = *(a1 + 40);
  v12 = [v3 dictionary];
  (*(v11 + 16))(v11, v12);

  v13 = *MEMORY[0x277D85DE8];
}