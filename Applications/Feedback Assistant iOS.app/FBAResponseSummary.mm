@interface FBAResponseSummary
- (FBAResponseSummary)init;
- (id)description;
- (id)simpleGroupInSection:(unint64_t)a3;
- (int64_t)sectionCount;
- (void)updateWithFormResponse:(id)a3;
@end

@implementation FBAResponseSummary

- (FBAResponseSummary)init
{
  v5.receiver = self;
  v5.super_class = FBAResponseSummary;
  v2 = [(FBAResponseSummary *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(FBAResponseSummary *)v2 setSimpleGroups:v3];
  }

  return v2;
}

- (void)updateWithFormResponse:(id)a3
{
  v35 = a3;
  [(FBAResponseSummary *)self setFormResponse:?];
  v4 = [(FBAResponseSummary *)self simpleGroups];
  [v4 removeAllObjects];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = [(FBAResponseSummary *)self formResponse];
  v6 = [v5 bugForm];
  v7 = [v6 questionGroups];

  obj = v7;
  v36 = [v7 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v36)
  {
    v34 = *v47;
    v8 = FBKQuestionRoleOptOutReason;
    do
    {
      v9 = 0;
      do
      {
        if (*v47 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v46 + 1) + 8 * v9);
        v39 = objc_opt_new();
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v37 = v10;
        v11 = [v10 questions];
        v12 = [v11 countByEnumeratingWithState:&v42 objects:v52 count:16];
        v38 = v9;
        if (v12)
        {
          v13 = v12;
          v14 = *v43;
          v40 = *v43;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v43 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v42 + 1) + 8 * i);
              v17 = [v16 role];
              v18 = [v17 isEqualToString:v8];

              if ((v18 & 1) == 0)
              {
                v19 = [(FBAResponseSummary *)self formResponse];
                v20 = [v16 ID];
                v21 = [v19 answerForQuestionID:v20];

                if (v21)
                {
                  v22 = [v21 resolved];
                  if (v22)
                  {
                    v23 = [v21 value];
                    v41 = v23;
                    if (![v23 length])
                    {
                      goto LABEL_20;
                    }
                  }

                  v24 = v8;
                  v25 = v11;
                  v26 = self;
                  v27 = [(FBAResponseSummary *)self formResponse];
                  v28 = [v27 isAnswerExpectedForQuestion:v16];

                  if (v22)
                  {

                    if ((v28 & 1) == 0)
                    {
                      goto LABEL_17;
                    }

LABEL_19:
                    v50[0] = @"q";
                    v50[1] = @"a";
                    v51[0] = v16;
                    v51[1] = v21;
                    v23 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
                    [v39 addObject:v23];
                    self = v26;
                    v11 = v25;
                    v8 = v24;
                    v14 = v40;
LABEL_20:
                  }

                  else
                  {
                    if (v28)
                    {
                      goto LABEL_19;
                    }

LABEL_17:
                    self = v26;
                    v11 = v25;
                    v8 = v24;
                    v14 = v40;
                  }
                }

                continue;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v42 objects:v52 count:16];
          }

          while (v13);
        }

        v29 = [SimpleQuestionGroup alloc];
        v30 = [[NSArray alloc] initWithArray:v39 copyItems:1];
        v31 = [(SimpleQuestionGroup *)v29 initWithQuestionGroup:v37 questionAnswerPairs:v30];

        [(SimpleQuestionGroup *)v31 setFormResponse:v35];
        v32 = [(FBAResponseSummary *)self simpleGroups];
        [v32 addObject:v31];

        v9 = v38 + 1;
      }

      while ((v38 + 1) != v36);
      v36 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v36);
  }
}

- (id)description
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(FBAResponseSummary *)self simpleGroups];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = &stru_1000E2210;
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v15 + 1) + 8 * v8) description];
        v7 = [NSString stringWithFormat:@"%@\r%@", v9, v10];

        v8 = v8 + 1;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_1000E2210;
  }

  v11 = objc_opt_class();
  v12 = [(FBAResponseSummary *)self formResponse];
  v13 = [NSString stringWithFormat:@"%@\r%@\r%@", v11, v12, v7];

  return v13;
}

- (id)simpleGroupInSection:(unint64_t)a3
{
  v4 = [(FBAResponseSummary *)self simpleGroups];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (int64_t)sectionCount
{
  v2 = [(FBAResponseSummary *)self simpleGroups];
  v3 = [v2 count];

  return v3;
}

@end