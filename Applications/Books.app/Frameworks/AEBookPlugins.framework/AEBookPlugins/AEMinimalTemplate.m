@interface AEMinimalTemplate
+ (AEMinimalTemplate)templateWithString:(id)a3 error:(id *)a4;
+ (AEMinimalTemplate)templateWithURL:(id)a3 error:(id *)a4;
+ (id)evaluateTemplateWithString:(id)a3 data:(id)a4 error:(id *)a5;
+ (id)evaluateTemplateWithURL:(id)a3 data:(id)a4 error:(id *)a5;
- (AEMinimalTemplate)initWithString:(id)a3 error:(id *)a4;
- (AEMinimalTemplate)initWithURL:(id)a3 error:(id *)a4;
- (BOOL)parseTemplate:(id)a3 error:(id *)a4;
- (id)evaluateWithData:(id)a3 error:(id *)a4;
- (id)evaluateWithData:(id)a3 templateSet:(id)a4 cycleContext:(id)a5 error:(id *)a6;
@end

@implementation AEMinimalTemplate

+ (AEMinimalTemplate)templateWithString:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithString:v6 error:a4];

  return v7;
}

+ (AEMinimalTemplate)templateWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithURL:v6 error:a4];

  return v7;
}

+ (id)evaluateTemplateWithString:(id)a3 data:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[a1 alloc] initWithString:v8 error:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 evaluateWithData:v9 error:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)evaluateTemplateWithURL:(id)a3 data:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[a1 alloc] initWithURL:v8 error:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 evaluateWithData:v9 error:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (AEMinimalTemplate)initWithString:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AEMinimalTemplate;
  v7 = [(AEMinimalTemplate *)&v11 init];
  v8 = v7;
  if (v7 && ![(AEMinimalTemplate *)v7 parseTemplate:v6 error:a4])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (AEMinimalTemplate)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AEMinimalTemplate;
  v7 = [(AEMinimalTemplate *)&v11 init];
  if (v7)
  {
    v8 = [NSString stringWithContentsOfURL:v6 usedEncoding:0 error:a4];
    if (!v8 || ![(AEMinimalTemplate *)v7 parseTemplate:v8 error:a4])
    {

      v9 = 0;
      goto LABEL_7;
    }
  }

  v9 = v7;
LABEL_7:

  return v9;
}

- (id)evaluateWithData:(id)a3 error:(id *)a4
{
  v4 = [(AEMinimalTemplate *)self evaluateWithData:a3 templateSet:0 cycleContext:0 error:a4];

  return v4;
}

- (id)evaluateWithData:(id)a3 templateSet:(id)a4 cycleContext:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  +[NSMutableString string];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3042000000;
  v33 = sub_10A798;
  v34 = sub_10A7A4;
  v35 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10A7AC;
  v23[3] = &unk_1E60D0;
  v13 = v29 = a6;
  v24 = v13;
  v28 = &v30;
  v14 = v11;
  v25 = v14;
  v15 = v12;
  v26 = v15;
  v16 = v10;
  v27 = v16;
  v17 = objc_retainBlock(v23);
  objc_storeWeak(v31 + 5, v17);
  memset(v22, 0, sizeof(v22));
  v18 = [(AEMinimalTemplate *)self steps];
  v19 = v16;
  LOBYTE(v16) = (v17[2])(v17, v18, v19, 0, v22);

  if (v16)
  {
    v20 = v13;
  }

  else
  {
    v20 = 0;
  }

  sub_10BC64(v22);

  _Block_object_dispose(&v30, 8);
  objc_destroyWeak(&v35);

  return v20;
}

- (BOOL)parseTemplate:(id)a3 error:(id *)a4
{
  v48 = a3;
  v5 = [NSScanner scannerWithString:?];
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 1;
  v49 = +[NSCharacterSet whitespaceCharacterSet];
  v6 = [NSMutableCharacterSet characterSetWithRange:97, 26];
  [v6 addCharactersInRange:{65, 26}];
  [v6 addCharactersInString:@".$@_"];
  v47 = [v6 copy];

  v7 = [NSMutableCharacterSet characterSetWithRange:97, 26];
  [v7 addCharactersInRange:{65, 26}];
  v46 = [v7 copy];

  v42 = [NSCharacterSet characterSetWithCharactersInString:@"{}"];
  [v5 setCharactersToBeSkipped:0];
  v8 = +[NSMutableArray array];
  v44 = +[NSMutableArray array];
  v39 = self;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_10C9C0;
  v69 = sub_10C9D0;
  v70 = 0;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10C9D8;
  v62[3] = &unk_1E60F8;
  v64 = &v65;
  v41 = v8;
  v63 = v41;
  v9 = objc_retainBlock(v62);
  +[NSCharacterSet newlineCharacterSet];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_10CB34;
  v40 = v59[3] = &unk_1E6120;
  v60 = v40;
  v61 = &v71;
  v10 = objc_retainBlock(v59);
  v45 = @"EOF encountered after {{ token";
  while (([v5 isAtEnd] & 1) == 0)
  {
    v58 = 0;
    v11 = [v5 scanUpToString:@"{{" intoString:&v58];
    v12 = v58;
    if (v11)
    {
      v13 = objc_alloc_init(AEMinimalTemplateStepText);
      [(AEMinimalTemplateStepText *)v13 setText:v12];
      (v9[2])(v9, v13);
      (v10[2])(v10, v12);
    }

    if (![v5 scanString:@"{{" intoString:0])
    {
      goto LABEL_16;
    }

    [v5 scanCharactersFromSet:v49 intoString:0];
    if ([v5 isAtEnd])
    {
      goto LABEL_72;
    }

    v14 = [v48 characterAtIndex:{objc_msgSend(v5, "scanLocation")}];
    if (v14 == 39)
    {
      [v5 scanString:@"'" intoString:0];
      v56 = v12;
      [v5 scanUpToString:@"'" intoString:&v56];
      v16 = v56;

      if (![v5 scanString:@"'" intoString:0])
      {
        v12 = v16;
        v34 = @"Unterminated string command";
        goto LABEL_71;
      }

      v17 = objc_alloc_init(AEMinimalTemplateStepText);
      [(AEMinimalTemplateStepText *)v17 setText:v16];
      (v9[2])(v9, v17);
      (v10[2])(v10, v16);
      goto LABEL_14;
    }

    if (v14 == 46)
    {
      [v5 scanString:@"." intoString:0];
      v57 = v12;
      v15 = [v5 scanCharactersFromSet:v47 intoString:&v57];
      v16 = v57;

      if ((v15 & 1) == 0)
      {

        v16 = @".";
      }

      v17 = objc_alloc_init(AEMinimalTemplateStepField);
      [(AEMinimalTemplateStepText *)v17 setKeyPath:v16];
      (v9[2])(v9, v17);
LABEL_14:
      v12 = v16;
      goto LABEL_15;
    }

    v55 = v12;
    v18 = [v5 scanCharactersFromSet:v46 intoString:&v55];
    v16 = v55;

    if (!v18)
    {
      v12 = v16;
      v34 = @"Unexpected characters after {{ token";
      goto LABEL_71;
    }

    if ([(__CFString *)v16 isEqualToString:@"if"])
    {
      if (![v5 scanCharactersFromSet:v49 intoString:0])
      {
        v12 = v16;
        v34 = @"Unexpected characters after 'if' command";
        goto LABEL_71;
      }

      v19 = [v5 scanString:@"!" intoString:0];
      if (v19)
      {
        [v5 scanCharactersFromSet:v49 intoString:0];
      }

      v54 = v16;
      v20 = [v5 scanCharactersFromSet:v47 intoString:&v54];
      v12 = v54;

      if (!v20)
      {
        v34 = @"Missing conditional in 'if' command";
        goto LABEL_71;
      }

      if (v66[5])
      {
        [v44 addObject:?];
      }

      v21 = objc_alloc_init(AEMinimalTemplateStepIf);
      v22 = +[NSMutableArray array];
      [(AEMinimalTemplateStepIf *)v21 setThenSteps:v22];

      [(AEMinimalTemplateStepIf *)v21 setConditional:v12];
      [(AEMinimalTemplateStepIf *)v21 setNegated:v19];
    }

    else
    {
      if ([(__CFString *)v16 isEqualToString:@"else"])
      {
        if (!v66[5] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v66[5] elseSteps], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
        {
          v12 = v16;
          v34 = @"Unexpected {{else}} command";
          goto LABEL_71;
        }

        v17 = +[NSMutableArray array];
        [v66[5] setElseSteps:v17];
        goto LABEL_14;
      }

      if ([(__CFString *)v16 isEqualToString:@"end"])
      {
        v24 = v66[5];
        if (!v24)
        {
          v12 = v16;
          v34 = @"Unexpected {{end}} command";
          goto LABEL_71;
        }

        v17 = v24;
        v25 = [v44 lastObject];
        v26 = v66[5];
        v66[5] = v25;

        if (v66[5])
        {
          [v44 removeLastObject];
        }

        (v9[2])(v9, v17);
        [v5 scanUpToCharactersFromSet:v42 intoString:0];
        goto LABEL_14;
      }

      if (![(__CFString *)v16 isEqualToString:@"range"])
      {
        if (![(__CFString *)v16 isEqualToString:@"embed"])
        {
          v45 = [NSString stringWithFormat:@"Unknown command '%@'", v16];
          v12 = v16;
          goto LABEL_72;
        }

        if (![v5 scanCharactersFromSet:v49 intoString:0])
        {
          v12 = v16;
          v34 = @"Unexpected characters after 'embed' command";
          goto LABEL_71;
        }

        if (([v5 isAtEnd] & 1) != 0 || !objc_msgSend(v5, "scanString:intoString:", @"'", 0))
        {
          v51 = v16;
          v30 = [v5 scanCharactersFromSet:v46 intoString:&v51];
          v12 = v51;

          if (!v30)
          {
            v34 = @"Missing name in embed";
            goto LABEL_71;
          }

          v29 = v12;
        }

        else
        {
          v52 = v16;
          [v5 scanUpToString:@"'" intoString:&v52];
          v12 = v52;

          if (([v5 scanString:@"'" intoString:0] & 1) == 0)
          {
            v34 = @"Unterminated string in embed";
LABEL_71:
            v45 = v34;
LABEL_72:

            goto LABEL_73;
          }

          v29 = v12;
          (v10[2])(v10, v29);
        }

        [v5 scanCharactersFromSet:v49 intoString:0];
        v50 = v29;
        v31 = [v5 scanCharactersFromSet:v47 intoString:&v50];
        v12 = v50;

        if (v31)
        {
          v32 = v12;
        }

        else
        {
          v32 = 0;
        }

        v33 = objc_alloc_init(AEMinimalTemplateStepEmbed);
        [(AEMinimalTemplateStepEmbed *)v33 setName:v29];
        [(AEMinimalTemplateStepEmbed *)v33 setKeyPath:v32];
        (v9[2])(v9, v33);

        v17 = v29;
        goto LABEL_15;
      }

      if (![v5 scanCharactersFromSet:v49 intoString:0])
      {
        v12 = v16;
        v34 = @"Unexpected characters after 'range' command";
        goto LABEL_71;
      }

      v53 = v16;
      v27 = [v5 scanCharactersFromSet:v47 intoString:&v53];
      v12 = v53;

      if (!v27)
      {
        v34 = @"Missing keyPath in 'range' command";
        goto LABEL_71;
      }

      if (v66[5])
      {
        [v44 addObject:?];
      }

      v21 = objc_alloc_init(AEMinimalTemplateStepRange);
      [(AEMinimalTemplateStepIf *)v21 setKeyPath:v12];
      v28 = +[NSMutableArray array];
      [(AEMinimalTemplateStepIf *)v21 setSteps:v28];
    }

    v17 = v66[5];
    v66[5] = v21;
LABEL_15:

    [v5 scanCharactersFromSet:v49 intoString:0];
    if (([v5 scanString:@"}}" intoString:0] & 1) == 0)
    {
      v34 = @"Missing }} token";
      goto LABEL_71;
    }

LABEL_16:
  }

  if (!v66[5])
  {
    v45 = 0;
    [(AEMinimalTemplate *)v39 setSteps:v41];
    v35 = 1;
    goto LABEL_76;
  }

  v45 = @"EOF encountered with unbalanced commands";
LABEL_73:
  if (a4)
  {
    v36 = [NSNumber numberWithUnsignedInteger:v72[3]];
    v37 = [NSDictionary dictionaryWithObjectsAndKeys:@"Parse error", NSLocalizedDescriptionKey, v36, @"line", v45, NSLocalizedFailureReasonErrorKey, 0, v8];
    *a4 = [NSError errorWithDomain:@"AEMinimalTemplateErrorDomain" code:1 userInfo:v37];
  }

  v35 = 0;
LABEL_76:

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v71, 8);

  return v35;
}

@end