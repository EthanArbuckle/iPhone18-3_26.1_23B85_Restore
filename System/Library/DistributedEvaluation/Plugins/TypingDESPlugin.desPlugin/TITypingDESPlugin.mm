@interface TITypingDESPlugin
+ (id)stringForConfiderence:(int)confiderence;
- (id)evaluateRecipe:(id)recipe recordInfo:(id)info recordData:(id)data attachments:(id)attachments error:(id *)error;
- (id)getAlignmentStats:(id)stats;
- (id)getTopStatisticsFromResults:(double)results[4];
- (id)runExperimentCPEvalForSession:(id)session forRecipe:(id)recipe;
- (id)summaryStatisticsEvalResults:(const void *)results ofEntries:(id)entries;
- (vector<TI::CP::ContinuousPathTestCase,)convertAlignedEntriesFromSession:(TITypingDESPlugin *)self;
- (void)cpEvalResult:(void *)result fromAlignedSession:(id)session forRecipe:(id)recipe;
@end

@implementation TITypingDESPlugin

- (id)evaluateRecipe:(id)recipe recordInfo:(id)info recordData:(id)data attachments:(id)attachments error:(id *)error
{
  recipeCopy = recipe;
  dataCopy = data;
  infoCopy = info;
  v13 = +[NSMutableDictionary dictionary];
  v14 = [infoCopy objectForKeyedSubscript:@"type"];

  LODWORD(infoCopy) = [v14 isEqualToString:@"typingSession"];
  if (infoCopy)
  {
    v15 = [recipeCopy objectForKeyedSubscript:@"expName"];
    v26 = 0;
    v16 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v26];
    v17 = v26;
    if (v17)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v17 description];
        *buf = 136315394;
        v28 = "[TITypingDESPlugin evaluateRecipe:recordInfo:recordData:attachments:error:]";
        v29 = 2112;
        v30 = v18;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s  Couldn't decode dodML typing session record: %@", buf, 0x16u);
      }

      v19 = [v17 description];
      v20 = @"error";
      v21 = v13;
      v22 = v19;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_7;
      }

      if ([(__CFString *)v15 isEqualToString:@"alignmentStats"])
      {
        v24 = [(TITypingDESPlugin *)self getAlignmentStats:v16];
        [v13 setObject:v24 forKeyedSubscript:v15];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v28 = "[TITypingDESPlugin evaluateRecipe:recordInfo:recordData:attachments:error:]";
          v29 = 2112;
          v30 = v13;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s  result: %@", buf, 0x16u);
        }

        goto LABEL_7;
      }

      v25 = [(TITypingDESPlugin *)self runExperimentCPEvalForSession:v16 forRecipe:recipeCopy];
      v19 = v25;
      if (v25)
      {
        v22 = v25;
      }

      else
      {
        v22 = &__NSDictionary0__struct;
      }

      v21 = v13;
      v20 = v15;
    }

    [v21 setObject:v22 forKeyedSubscript:v20];

LABEL_7:
  }

  return v13;
}

- (id)getAlignmentStats:(id)stats
{
  statsCopy = stats;
  v4 = +[NSMutableDictionary dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = statsCopy;
  alignedEntries = [statsCopy alignedEntries];
  v6 = [alignedEntries countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(alignedEntries);
        }

        v10 = [objc_opt_class() stringForConfiderence:{objc_msgSend(*(*(&v28 + 1) + 8 * i), "inSessionAlignmentConfidence")}];
        v11 = [v4 objectForKeyedSubscript:v10];

        if (v11)
        {
          v12 = [v4 objectForKeyedSubscript:v10];
          integerValue = [v12 integerValue];

          v14 = integerValue + 1;
        }

        else
        {
          v14 = 1;
        }

        v15 = [NSNumber numberWithUnsignedInteger:v14];
        [v4 setObject:v15 forKeyedSubscript:v10];
      }

      v7 = [alignedEntries countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  alignedEntries2 = [v27 alignedEntries];
  v17 = [alignedEntries2 count];

  if (v17)
  {
    highConfAlignedSubSegment = [v27 highConfAlignedSubSegment];
    v19 = [highConfAlignedSubSegment componentsSeparatedByString:@" "];
    v20 = [v19 count];
    alignedEntries3 = [v27 alignedEntries];
    v22 = v20 / [alignedEntries3 count];
  }

  else
  {
    v22 = 0.0;
  }

  v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v27 success]);
  [v4 setObject:v23 forKeyedSubscript:@"successEntireSession"];

  *&v24 = v22;
  v25 = [NSNumber numberWithFloat:v24];
  [v4 setObject:v25 forKeyedSubscript:@"ratioContiguousHighConfAlignment"];

  return v4;
}

- (id)runExperimentCPEvalForSession:(id)session forRecipe:(id)recipe
{
  recipeCopy = recipe;
  sessionCopy = session;
  v8 = [recipeCopy objectForKeyedSubscript:@"expName"];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = -1;
  [(TITypingDESPlugin *)self cpEvalResult:&v14 fromAlignedSession:sessionCopy forRecipe:recipeCopy];

  alignedEntries = [sessionCopy alignedEntries];

  v10 = [(TITypingDESPlugin *)self summaryStatisticsEvalResults:&v14 ofEntries:alignedEntries];

  v11 = [NSNumber numberWithInt:v17];
  [v10 setObject:v11 forKeyedSubscript:@"db_records_size"];

  [v10 setObject:v8 forKeyedSubscript:@"algorithm"];
  v12 = [NSNumber numberWithUnsignedLong:0x34F72C234F72C235 * ((v15 - v14) >> 3)];
  [v10 setObject:v12 forKeyedSubscript:@"num_evaluated_entries"];

  v18 = &v14;
  sub_7558(&v18);

  return v10;
}

- (void)cpEvalResult:(void *)result fromAlignedSession:(id)session forRecipe:(id)recipe
{
  sessionCopy = session;
  recipeCopy = recipe;
  v10 = [recipeCopy objectForKeyedSubscript:@"expName"];
  v11 = [recipeCopy objectForKeyedSubscript:@"sources"];
  v21 = 4;
  v23 = 0;
  v22 = xmmword_D530;
  v24 = xmmword_D548;
  v25 = 0x3FF0000000000000;
  v27 = 0;
  v26 = xmmword_D560;
  v28 = 1056964608;
  v29 = 0x200000001;
  v30 = 1;
  v31 = 3;
  v32 = 0u;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  KB::String::String(v35);
  v35[8] = 1050253722;
  v45 = 1;
  v36 = xmmword_D4B0;
  v37 = xmmword_D4C0;
  v38 = xmmword_D4D0;
  v39 = xmmword_D4E0;
  v40 = 0x4010000000000000;
  v41 = xmmword_D4F0;
  v42 = xmmword_D500;
  v43 = xmmword_D4A0;
  v44 = xmmword_D510;
  v46 = 0x404B30CB295E9E1BLL;
  v47 = 0x4019D81D7DBF4880;
  sub_7654(v18);
  [(TITypingDESPlugin *)self convertAlignedEntriesFromSession:sessionCopy];
  if (![v10 isEqualToString:@"shapeMatching"])
  {
    [sessionCopy locale];
    localeIdentifier = [objc_claimAutoreleasedReturnValue() localeIdentifier];
    TI::CP::CPEval::load_language_resources(&v18[0].__r_.__value_.__l.__data_, localeIdentifier, 0, 0.4);
  }

  v19 = 1;
  v13 = objc_autoreleasePoolPush();
  TI::CP::CPEval::evaluate_records(v18, v17, 2, &v21, &v14);
  sub_77C4(result);
  *result = v14;
  *(result + 2) = v15;
  v15 = 0;
  v14 = 0uLL;
  *(result + 6) = v16;
  v20 = &v14;
  sub_7558(&v20);
  objc_autoreleasePoolPop(v13);
  *&v14 = v17;
  sub_7804(&v14);
  sub_A6B8(v18);
  KB::String::~String(v35);
  if ((v34[15] & 0x80000000) != 0)
  {
    operator delete(*(&v33 + 1));
  }

  if (SBYTE7(v33) < 0)
  {
    operator delete(v32);
  }
}

- (vector<TI::CP::ContinuousPathTestCase,)convertAlignedEntriesFromSession:(TITypingDESPlugin *)self
{
  v5 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v6 = objc_autoreleasePoolPush();
  [v5 locale];
  localeIdentifier = [objc_claimAutoreleasedReturnValue() localeIdentifier];
  TI::CP::TestCaseConverter::create_testcase_converter(localeIdentifier, 0);
}

- (id)summaryStatisticsEvalResults:(const void *)results ofEntries:(id)entries
{
  selfCopy = self;
  entriesCopy = entries;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = +[NSMutableDictionary dictionary];
  v6 = *results;
  v7 = *(results + 1);
  if (*results != v7)
  {
    while (1)
    {
      v8 = [entriesCopy objectAtIndexedSubscript:{*v6, selfCopy}];
      v9 = v8;
      v10 = v6[36];
      v27 = 0;
      v26 = 0;
      if ((v10 & 0x80000000) == 0)
      {
        break;
      }

LABEL_10:
      inSessionAlignmentConfidence = [v8 inSessionAlignmentConfidence];
      v12 = *(v6 + 220);
      if (inSessionAlignmentConfidence == 3)
      {
        for (i = 0; i != 3; ++i)
        {
          while (1)
          {
            v14 = *(&v26 + i);
            *(&v34 + i) = *(&v34 + i) + v14;
            if ((v12 & 1) == 0)
            {
              break;
            }

            *(&v30 + i) = *(&v30 + i) + v14;
            if (++i == 3)
            {
              *(&v35 + 1) = *(&v35 + 1) + 1.0;
              v15 = &v31 + 1;
              goto LABEL_17;
            }
          }
        }

        v15 = &v35 + 1;
LABEL_17:
        *v15 = *v15 + 1.0;
      }

      for (j = 0; j != 3; ++j)
      {
        while (1)
        {
          v17 = *(&v26 + j);
          *(&v32 + j) = *(&v32 + j) + v17;
          if (v12)
          {
            break;
          }

          if (++j == 3)
          {
            goto LABEL_23;
          }
        }

        *(&v28 + j) = *(&v28 + j) + v17;
      }

      *(&v29 + 1) = *(&v29 + 1) + 1.0;
LABEL_23:
      *(&v33 + 1) = *(&v33 + 1) + 1.0;

      v6 += 58;
      if (v6 == v7)
      {
        goto LABEL_24;
      }
    }

    if (v10)
    {
      if (v10 > 3)
      {
        if (v10 > 0x27)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
      LODWORD(v26) = 1;
    }

    HIDWORD(v26) = 1;
LABEL_9:
    v27 = 1;
    goto LABEL_10;
  }

LABEL_24:
  v18 = selfCopy;
  selfCopy = [(TITypingDESPlugin *)selfCopy getTopStatisticsFromResults:&v32, selfCopy];
  [v25 setObject:selfCopy forKeyedSubscript:@"entireSession"];

  v20 = [(TITypingDESPlugin *)v18 getTopStatisticsFromResults:&v34];
  [v25 setObject:v20 forKeyedSubscript:@"highConfSession"];

  v21 = [(TITypingDESPlugin *)v18 getTopStatisticsFromResults:&v28];
  [v25 setObject:v21 forKeyedSubscript:@"inShapeDbEntireSession"];

  v22 = [(TITypingDESPlugin *)v18 getTopStatisticsFromResults:&v30];
  [v25 setObject:v22 forKeyedSubscript:@"inShapeDBHighConfSession"];

  return v25;
}

- (id)getTopStatisticsFromResults:(double)results[4]
{
  if (results[3] > 0.0)
  {
    for (i = 0; i != 3; ++i)
    {
      results[i] = results[i] * 100.0 / results[3];
    }
  }

  v10[0] = @"top1";
  v5 = [NSNumber numberWithDouble:*results];
  v11[0] = v5;
  v10[1] = @"top4";
  v6 = [NSNumber numberWithDouble:results[1]];
  v11[1] = v6;
  v10[2] = @"top40";
  v7 = [NSNumber numberWithDouble:results[2]];
  v11[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

+ (id)stringForConfiderence:(int)confiderence
{
  if ((confiderence - 1) > 2)
  {
    return @"AlignmentConfidenceUnknown";
  }

  else
  {
    return off_10620[confiderence - 1];
  }
}

@end