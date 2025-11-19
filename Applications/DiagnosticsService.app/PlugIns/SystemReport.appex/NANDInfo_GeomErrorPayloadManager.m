@interface NANDInfo_GeomErrorPayloadManager
- (BOOL)hasNewErrors;
- (BOOL)iteratePerPageDictsForMaxPagesWithStatus:(unsigned int)a3 iteratorCallBack:(id)a4;
- (NANDInfo_GeomErrorPayloadManager)initWithPayloadBuf:(char *)a3 bufSize:(unint64_t)a4 prevNumErrors:(unsigned int)a5;
- (id)dictionaryRepresentation;
- (void)parseErrorPayloadBuf:(char *)a3 bufSize:(unint64_t)a4;
- (void)populateOtherStats:(id)a3;
@end

@implementation NANDInfo_GeomErrorPayloadManager

- (NANDInfo_GeomErrorPayloadManager)initWithPayloadBuf:(char *)a3 bufSize:(unint64_t)a4 prevNumErrors:(unsigned int)a5
{
  v22.receiver = self;
  v22.super_class = NANDInfo_GeomErrorPayloadManager;
  v8 = [(NANDInfo_GeomErrorPayloadManager *)&v22 init];
  v9 = v8;
  v10 = 0;
  if (a4 >= 4 && v8)
  {
    v8->_invalid_error_payload = 0;
    v8->_num_errors_in_payload_prev = a5;
    v11 = objc_alloc_init(NSMutableArray);
    error_payload_array = v9->_error_payload_array;
    v9->_error_payload_array = v11;

    v13 = objc_alloc_init(NSMutableArray);
    error_pages_array = v9->_error_pages_array;
    v9->_error_pages_array = v13;

    other_stats_dict = v9->_other_stats_dict;
    v9->_other_stats_dict = 0;

    v16 = *a3;
    if (*a3)
    {
      v17 = 0;
      v18 = a3 + 4;
      v19 = 4;
      do
      {
        v20 = *(v18 + 1) + 4;
        v19 += v20;
        if (a4 < v19)
        {
          break;
        }

        v17 += *(v18 + 11) + ((v18[12] >> 1) & 1);
        v18 += v20;
        --v16;
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v9->_num_errors_in_payload_cur = v17;
    syslog(5, "total %u geom error entries. Previous %u", [(NANDInfo_GeomErrorPayloadManager *)v9 num_errors_in_payload_cur], [(NANDInfo_GeomErrorPayloadManager *)v9 num_errors_in_payload_prev]);
    v10 = v9;
  }

  return v10;
}

- (void)parseErrorPayloadBuf:(char *)a3 bufSize:(unint64_t)a4
{
  if (!a3 || a4 <= 3)
  {
    syslog(3, "Error: invalid geom error payload buffer");

    [(NANDInfo_GeomErrorPayloadManager *)self setInvalid_error_payload:1];
    return;
  }

  v7 = *a3;
  syslog(5, "total %u geom error entries", *a3);
  v51 = v7;
  if (!v7)
  {
    return;
  }

  v8 = 0;
  v9 = 0;
  v52 = &a3[a4];
  v10 = a3 + 4;
  v11 = 0;
  v50 = self;
  while (v52 >= v10 || v52 >= &v10[*(v10 + 1) + 4])
  {
    syslog(5, "Geom error idx %d", v11);
    if (*v10)
    {
      syslog(3, "Error: entry %u mismatch in expected block tlv type");
      goto LABEL_34;
    }

    if (*(v10 + 2) != 1)
    {
      syslog(3, "Error: entry %u mismatch in expected err header tlv type");
      goto LABEL_34;
    }

    v12 = &v10[*(v10 + 3) + 8];
    if (*v12 != 2)
    {
      syslog(3, "Error: entry %u mismatch in expected payload header tlv type");
      goto LABEL_34;
    }

    v13 = *(v10 + 15);
    v14 = v12 + 4;
    v15 = &v10[*(v10 + 1) + 4];
    if (v15 < &v12[((v13 + 3) >> 2) + 4])
    {
      syslog(3, "Error: entry %u end of geom error page status exceeds entry end");
      goto LABEL_34;
    }

    if (v15 > v52)
    {
      syslog(3, "Error: entry %u end of geom error entry exceeds buffer end");
      goto LABEL_34;
    }

    v53 = &v10[*(v10 + 1) + 4];
    v16 = objc_alloc_init(NSMutableDictionary);

    v17 = [NSNumber numberWithUnsignedInt:v11];
    [v16 setObject:v17 forKeyedSubscript:@"ESR_header_i"];

    v18 = [NSNumber numberWithUnsignedInt:*(v10 + 2) & 0xF];
    [v16 setObject:v18 forKeyedSubscript:@"msp"];

    v19 = [NSNumber numberWithUnsignedInt:(*(v10 + 2) >> 4) & 1];
    [v16 setObject:v19 forKeyedSubscript:@"channel"];

    v20 = [NSNumber numberWithUnsignedInt:(*(v10 + 2) >> 5) & 0xF];
    [v16 setObject:v20 forKeyedSubscript:@"die"];

    v21 = [NSNumber numberWithUnsignedInt:(*(v10 + 2) >> 9) & 7];
    [v16 setObject:v21 forKeyedSubscript:@"plane"];

    v22 = [NSNumber numberWithUnsignedInt:(*(v10 + 2) >> 12) & 0x7FFF];
    [v16 setObject:v22 forKeyedSubscript:@"bork"];

    v23 = [NSNumber numberWithUnsignedInt:*(v10 + 2) >> 27];
    [v16 setObject:v23 forKeyedSubscript:@"reason"];

    v24 = [NSNumber numberWithUnsignedShort:*(v10 + 13)];
    [v16 setObject:v24 forKeyedSubscript:@"failPage"];

    v25 = [NSNumber numberWithUnsignedInt:v13];
    [v16 setObject:v25 forKeyedSubscript:@"numOfPages"];

    v26 = [NSNumber numberWithUnsignedChar:v10[17]];
    [v16 setObject:v26 forKeyedSubscript:@"mode"];

    v27 = [NSNumber numberWithUnsignedChar:(v10[12] >> 1) & 1];
    [v16 setObject:v27 forKeyedSubscript:@"reliability"];

    v28 = v10[12];
    if (v28 >= 0x10)
    {
      v29 = [NSNumber numberWithUnsignedInt:*(v10 + 25)];
      [v16 setObject:v29 forKeyedSubscript:@"cycles"];

      v30 = [NSNumber numberWithUnsignedInt:*(v10 + 29)];
      [v16 setObject:v30 forKeyedSubscript:@"age"];

      v31 = [NSNumber numberWithUnsignedInt:*(v10 + 33)];
      [v16 setObject:v31 forKeyedSubscript:@"timeStamp"];

      v32 = [NSNumber numberWithUnsignedShort:*(v10 + 69)];
      [v16 setObject:v32 forKeyedSubscript:@"readDisturbCounter"];

      v33 = [NSNumber numberWithUnsignedChar:v10[71]];
      [v16 setObject:v33 forKeyedSubscript:@"flow"];

      v34 = [NSNumber numberWithChar:v10[72]];
      [v16 setObject:v34 forKeyedSubscript:@"minTemp"];

      v35 = [NSNumber numberWithChar:v10[73]];
      [v16 setObject:v35 forKeyedSubscript:@"maxTemp"];

      v36 = [NSNumber numberWithUnsignedChar:v10[24] & 1];
      [v16 setObject:v36 forKeyedSubscript:@"openBlock"];

LABEL_15:
      v37 = [NSNumber numberWithUnsignedShort:*(v10 + 10)];
      [v16 setObject:v37 forKeyedSubscript:@"numScannedPages"];

      v38 = [NSNumber numberWithUnsignedShort:*(v10 + 11)];
      [v16 setObject:v38 forKeyedSubscript:@"numFailures"];

      goto LABEL_16;
    }

    if (v28 >= 0xC)
    {
      goto LABEL_15;
    }

LABEL_16:
    v54 = v11;
    v39 = objc_alloc_init(NSMutableArray);

    if (v13)
    {
      v40 = 0;
      v41 = 0;
      do
      {
        v42 = (*(v14 + (v41 >> 2)) >> (v40 & 6)) & 3;
        if (v41 == *(v10 + 13))
        {
          v43 = [NSNumber numberWithUnsignedInt:(*(v14 + (v41 >> 2)) >> (v40 & 6)) & 3];
          [v16 setObject:v43 forKeyedSubscript:@"failPageStatus"];
        }

        if (v42)
        {
          v55[0] = @"ESR_page_i";
          v44 = [NSNumber numberWithUnsignedInt:v41];
          v55[1] = @"ESR_page_i_status";
          v56[0] = v44;
          v45 = [NSNumber numberWithUnsignedInt:v42];
          v56[1] = v45;
          v46 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
          [v39 addObject:v46];
        }

        v41 = (v41 + 1);
        v40 += 2;
      }

      while (v13 != v41);
    }

    v47 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v39 count]);
    [v16 setObject:v47 forKeyedSubscript:@"ESR_numFailedPages"];

    self = v50;
    v48 = [(NANDInfo_GeomErrorPayloadManager *)v50 error_payload_array];
    [v48 addObject:v16];

    v49 = [(NANDInfo_GeomErrorPayloadManager *)v50 error_pages_array];
    [v49 addObject:v39];

    v10 = v53;
    v11 = (v54 + 1);
    v8 = v39;
    v9 = v16;
    if (v11 == v51)
    {

      return;
    }
  }

  syslog(3, "Error: entry %u end of geom error header exceeds buffer end");
LABEL_34:
  [(NANDInfo_GeomErrorPayloadManager *)self setInvalid_error_payload:1];
}

- (void)populateOtherStats:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    [(NANDInfo_GeomErrorPayloadManager *)self setOther_stats_dict:v5];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [&off_1000C86C0 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      do
      {
        v10 = 0;
        v11 = v8;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(&off_1000C86C0);
          }

          v8 = *(*(&v15 + 1) + 8 * v10);

          v12 = [v4 objectForKeyedSubscript:v8];

          if (v12)
          {
            v13 = [v4 objectForKeyedSubscript:v8];
            v14 = [(NANDInfo_GeomErrorPayloadManager *)self other_stats_dict];
            [v14 setObject:v13 forKeyedSubscript:v8];
          }

          v10 = v10 + 1;
          v11 = v8;
        }

        while (v7 != v10);
        v7 = [&off_1000C86C0 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)iteratePerPageDictsForMaxPagesWithStatus:(unsigned int)a3 iteratorCallBack:(id)a4
{
  v5 = a4;
  if ([(NANDInfo_GeomErrorPayloadManager *)self invalid_error_payload])
  {
    goto LABEL_30;
  }

  v6 = [(NANDInfo_GeomErrorPayloadManager *)self error_payload_array];
  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = v6;
  v8 = [(NANDInfo_GeomErrorPayloadManager *)self error_pages_array];
  if (!v8)
  {

    goto LABEL_30;
  }

  v9 = v8;
  v10 = [(NANDInfo_GeomErrorPayloadManager *)self other_stats_dict];

  if (!v10)
  {
LABEL_30:
    syslog(3, "ERROR: Missing valid input data");
    v41 = 0;
    goto LABEL_31;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v11 = [(NANDInfo_GeomErrorPayloadManager *)self error_payload_array];
  v47 = [v11 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v47)
  {
    v52 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v48 = *v60;
    v44 = v11;
    v46 = self;
    while (2)
    {
      v16 = 0;
      v17 = v13;
      v18 = v14;
      do
      {
        if (*v60 != v48)
        {
          v19 = v16;
          objc_enumerationMutation(v11);
          v16 = v19;
        }

        v49 = v16;
        v20 = *(*(&v59 + 1) + 8 * v16);

        v21 = [(NANDInfo_GeomErrorPayloadManager *)self error_pages_array];
        v22 = [v21 count];

        if (v22 <= v52)
        {
          syslog(3, "ERROR: error pages array smaller than payload array!");
          v41 = 0;
          v14 = v18;
          v13 = v17;
          goto LABEL_36;
        }

        context = objc_autoreleasePoolPush();
        v51 = v20;
        v14 = [[NSMutableDictionary alloc] initWithDictionary:v20 copyItems:1];

        [(NANDInfo_GeomErrorPayloadManager *)self error_pages_array];
        v24 = v23 = self;
        v13 = [v24 objectAtIndexedSubscript:v52];

        v25 = [(NANDInfo_GeomErrorPayloadManager *)v23 other_stats_dict];
        [v14 addEntriesFromDictionary:v25];

        if ([v13 count])
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          obj = v13;
          v26 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = 0;
            v29 = *v56;
            v45 = v13;
            while (2)
            {
              v30 = 0;
              v31 = v28 + 1;
              v43 = v28 + v27;
              v32 = v15;
              do
              {
                if (*v56 != v29)
                {
                  objc_enumerationMutation(obj);
                }

                v15 = *(*(&v55 + 1) + 8 * v30);

                if (v31 > a3)
                {
                  v11 = v44;
                  v13 = v45;
                  goto LABEL_25;
                }

                v33 = [v15 objectForKeyedSubscript:@"ESR_page_i"];
                [v14 setObject:v33 forKeyedSubscript:@"ESR_page_i"];

                v34 = [v15 objectForKeyedSubscript:@"ESR_page_i_status"];
                [v14 setObject:v34 forKeyedSubscript:@"ESR_page_i_status"];

                v35 = objc_autoreleasePoolPush();
                v36 = [[NSDictionary alloc] initWithDictionary:v14 copyItems:1];
                v37 = v5[2](v5, v36);

                if (!v37)
                {
                  syslog(3, "ERROR: failed to run the callBack when iterating error payload pages!");
                  objc_autoreleasePoolPop(v35);

                  v11 = v44;
                  v13 = v45;
                  goto LABEL_33;
                }

                objc_autoreleasePoolPop(v35);
                v30 = v30 + 1;
                ++v31;
                v32 = v15;
              }

              while (v27 != v30);
              v27 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
              v11 = v44;
              v13 = v45;
              v28 = v43;
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          v15 = 0;
LABEL_25:
        }

        else
        {
          [v14 setObject:&off_1000C8A08 forKeyedSubscript:@"ESR_page_i"];
          [v14 setObject:&off_1000C8A08 forKeyedSubscript:@"ESR_page_i_status"];
          v38 = [[NSDictionary alloc] initWithDictionary:v14 copyItems:1];
          v39 = v5[2](v5, v38);

          if ((v39 & 1) == 0)
          {
            syslog(3, "ERROR: failed to run the callBack on error entry without error pages!");
LABEL_33:
            objc_autoreleasePoolPop(context);
            v41 = 0;
            v20 = v51;
            goto LABEL_36;
          }
        }

        self = v46;
        ++v52;
        objc_autoreleasePoolPop(context);
        v16 = v49 + 1;
        v12 = v51;
        v17 = v13;
        v40 = v13;
        v18 = v14;
      }

      while ((v49 + 1) != v47);
      v12 = v51;
      v13 = v40;
      v47 = [v11 countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (v47)
      {
        continue;
      }

      break;
    }

    v20 = 0;
  }

  else
  {
    v20 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v41 = 1;
LABEL_36:

LABEL_31:
  return v41;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  if ([(NANDInfo_GeomErrorPayloadManager *)self invalid_error_payload])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"invalidErrorPayload"];
  }

  else
  {
    v4 = [(NANDInfo_GeomErrorPayloadManager *)self error_payload_array];
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
    [v3 setObject:v5 forKeyedSubscript:@"error_count"];

    v6 = [(NANDInfo_GeomErrorPayloadManager *)self error_payload_array];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(NANDInfo_GeomErrorPayloadManager *)self other_stats_dict];

      if (v8)
      {
        v9 = [(NANDInfo_GeomErrorPayloadManager *)self other_stats_dict];
        [v3 setObject:v9 forKeyedSubscript:@"other_stats"];
      }

      v10 = objc_alloc_init(NSMutableArray);
      [v3 setObject:v10 forKeyedSubscript:@"error_payload"];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = [(NANDInfo_GeomErrorPayloadManager *)self error_payload_array];
      v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v11)
      {
        v12 = v11;
        v26 = v3;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = *v28;
        do
        {
          v17 = 0;
          v18 = v13;
          v19 = v14;
          v20 = v15;
          do
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v27 + 1) + 8 * v17);

            v13 = [[NSMutableDictionary alloc] initWithDictionary:v15 copyItems:1];
            v21 = [(NANDInfo_GeomErrorPayloadManager *)self error_pages_array];
            v14 = v19 + 1;
            v22 = [v21 objectAtIndexedSubscript:v19];
            [v13 setObject:v22 forKeyedSubscript:@"page_statuses"];

            v23 = [v26 objectForKeyedSubscript:@"error_payload"];
            [v23 addObject:v13];

            v17 = v17 + 1;
            v18 = v13;
            v19 = v14;
            v20 = v15;
          }

          while (v12 != v17);
          v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v12);

        v3 = v26;
      }
    }
  }

  return v3;
}

- (BOOL)hasNewErrors
{
  if ([(NANDInfo_GeomErrorPayloadManager *)self invalid_error_payload])
  {
    return 0;
  }

  v4 = [(NANDInfo_GeomErrorPayloadManager *)self num_errors_in_payload_cur];
  return v4 > [(NANDInfo_GeomErrorPayloadManager *)self num_errors_in_payload_prev];
}

@end