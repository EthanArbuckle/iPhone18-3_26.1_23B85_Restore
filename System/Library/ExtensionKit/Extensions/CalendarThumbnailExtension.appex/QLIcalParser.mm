@interface QLIcalParser
+ (id)parseICSDate:(id)a3 calendar:(id)a4 isEndDate:(BOOL)a5;
- (QLIcalParser)initWithURL:(id)a3;
@end

@implementation QLIcalParser

+ (id)parseICSDate:(id)a3 calendar:(id)a4 isEndDate:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if (v7)
  {
    v8 = [a4 systemCalendarForDate:v7 options:0];
    v9 = [v7 hasTimeComponent];
    v10 = [v7 components];
    v11 = v10;
    if ((v9 & 1) != 0 || !v5)
    {
      [v10 setCalendar:v8];
    }

    else
    {
      v12 = [v8 dateFromComponents:v10];

      v13 = [v8 dateByAddingUnit:16 value:-1 toDate:v12 options:0];
      v11 = [v8 components:1048604 fromDate:v13];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (QLIcalParser)initWithURL:(id)a3
{
  v4 = a3;
  v58.receiver = self;
  v58.super_class = QLIcalParser;
  v5 = [(QLIcalParser *)&v58 init];
  if (!v5)
  {
    goto LABEL_42;
  }

  v6 = [[ICSDocument alloc] initWithContentsOfURL:v4 options:0 error:0];
  v7 = v6;
  if (v6)
  {
    v8 = [(QLIcalParser *)v6 calendar];
    if (v8)
    {
      v9 = v8;
      v42 = v7;
      v43 = v5;
      v44 = v4;
      [v8 componentKeys];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v57 = 0u;
      v10 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v10)
      {
        v11 = v10;
        isKindOfClass = 0;
        v13 = 0;
        v14 = *v55;
        v45 = *v55;
        v46 = v9;
        while (2)
        {
          v15 = 0;
          v47 = v11;
          do
          {
            if (*v55 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v54 + 1) + 8 * v15);
            v17 = [v9 componentForKey:v16];
            if (v17)
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                if (v13)
                {

                  goto LABEL_35;
                }

                v13 = v17;
              }

              else
              {
                isKindOfClass = 0;
              }
            }

            else
            {
              v49 = isKindOfClass;
              v18 = [v9 componentOccurrencesForKey:v16];
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v53 = 0u;
              v19 = v18;
              v20 = [v19 countByEnumeratingWithState:&v50 objects:v59 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v51;
                while (2)
                {
                  for (i = 0; i != v21; i = i + 1)
                  {
                    if (*v51 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v24 = *(*(&v50 + 1) + 8 * i);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        continue;
                      }
                    }

                    if (v13)
                    {

                      v13 = 0;
                      goto LABEL_27;
                    }

                    v13 = v24;
                  }

                  v21 = [v19 countByEnumeratingWithState:&v50 objects:v59 count:16];
                  if (v21)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_27:

              v14 = v45;
              v9 = v46;
              isKindOfClass = v49;
              v11 = v47;
            }

            v15 = v15 + 1;
          }

          while (v15 != v11);
          v11 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        LOBYTE(isKindOfClass) = 0;
LABEL_35:
        v13 = 0;
      }

      v5 = v43;
      v43->_isTodo = isKindOfClass & 1;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v13;
        v43->_isDone = [v25 status] == 4;
        v26 = [v25 due];
        v27 = [QLIcalParser parseICSDate:v26 calendar:v9 isEndDate:0];
        dueDate = v43->_dueDate;
        v43->_dueDate = v27;

        v29 = [v25 summary];
        summary = v43->_summary;
        v43->_summary = v29;
        v4 = v44;
        v31 = v42;
      }

      else
      {
        objc_opt_class();
        v4 = v44;
        v31 = v42;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_41:

LABEL_42:
          v7 = v5;
          goto LABEL_43;
        }

        v32 = v13;
        v33 = [v32 dtend];
        v34 = [QLIcalParser parseICSDate:v33 calendar:v9 isEndDate:1];
        endDate = v43->_endDate;
        v43->_endDate = v34;

        v36 = [v32 dtstart];
        v37 = [QLIcalParser parseICSDate:v36 calendar:v9 isEndDate:0];
        startDate = v43->_startDate;
        v43->_startDate = v37;

        v39 = [v32 summary];
        v40 = v43->_summary;
        v43->_summary = v39;

        summary = [v32 dtstart];
        v43->_fullDay = [summary hasTimeComponent] ^ 1;
      }

      goto LABEL_41;
    }

    v7 = 0;
  }

LABEL_43:

  return v7;
}

@end