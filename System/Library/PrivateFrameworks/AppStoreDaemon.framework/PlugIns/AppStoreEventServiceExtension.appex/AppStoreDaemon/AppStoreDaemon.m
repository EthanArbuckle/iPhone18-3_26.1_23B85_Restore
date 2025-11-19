_UNKNOWN **sub_100000B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_self();
  v7 = [NSString stringWithFormat:@"p%ldi%ldt%ld", a2, a3, a4];
  v8 = [v7 length];
  v35[0] = @"^p1i1t1";
  v35[1] = &off_100004498;
  v9 = [NSArray arrayWithObjects:v35 count:2];
  v36[0] = v9;
  v34[0] = @"^p1i1t4";
  v34[1] = &off_100004468;
  v10 = [NSArray arrayWithObjects:v34 count:2];
  v36[1] = v10;
  v33[0] = @"^p1i3";
  v33[1] = &off_100004480;
  v11 = [NSArray arrayWithObjects:v33 count:2];
  v36[2] = v11;
  v32[0] = @"^p4i1";
  v32[1] = &off_1000044B0;
  v12 = [NSArray arrayWithObjects:v32 count:2];
  v36[3] = v12;
  v31[0] = @"^p4i3";
  v31[1] = &off_1000044B0;
  v13 = [NSArray arrayWithObjects:v31 count:2];
  v36[4] = v13;
  v14 = [NSArray arrayWithObjects:v36 count:5];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        if ([v20 count] == 2)
        {
          v21 = [v20 objectAtIndexedSubscript:0];
          v22 = [NSRegularExpression regularExpressionWithPattern:v21 options:0 error:0];

          if (v22)
          {
            v23 = [v22 firstMatchInString:v7 options:0 range:{0, v8}];

            if (v23)
            {
              v24 = [v20 objectAtIndexedSubscript:1];

              goto LABEL_14;
            }
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v24 = &off_1000044C8;
LABEL_14:

  return v24;
}