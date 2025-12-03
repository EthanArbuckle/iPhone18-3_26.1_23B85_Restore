@interface BCSCalendarEventParser
+ (id)_validatedICSString:(id)string;
+ (id)parseString:(id)string;
@end

@implementation BCSCalendarEventParser

+ (id)parseString:(id)string
{
  stringCopy = string;
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    [(BCSCalendarEventParser *)v5 parseString:v6, v7, v8, v9, v10, v11, v12];
  }

  v13 = stringCopy;
  if ([v13 _bcs_hasCaseInsensitivePrefix:@"BEGIN:VEVENT"])
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"BEGIN:VCALENDAR\r\n%@\r\nEND:VCALENDAR", v13];

LABEL_6:
    v15 = [self _validatedICSString:v14];
    if ([v15 length])
    {
      v16 = [[BCSCalendarEventData alloc] initWithICSString:v15];
    }

    else
    {
      v16 = [[BCSInvalidParsedData alloc] initWithInvalidDataType:7 invalidContents:v13];
    }

    v17 = v16;

    goto LABEL_13;
  }

  v14 = v13;
  if ([v13 _bcs_hasCaseInsensitivePrefix:@"BEGIN:VCALENDAR"])
  {
    goto LABEL_6;
  }

  v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v18)
  {
    [(BCSCalendarEventParser *)v18 parseString:v19, v20, v21, v22, v23, v24, v25];
  }

  v17 = 0;
  v14 = v13;
LABEL_13:

  return v17;
}

+ (id)_validatedICSString:(id)string
{
  v60 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = [objc_alloc(getICSDocumentClass()) initWithICSString:stringCopy options:0 error:0];
  v5 = v4;
  if (v4)
  {
    calendar = [v4 calendar];
    v7 = calendar;
    if (calendar)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      components = [calendar components];
      v9 = [components countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v56;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v56 != v11)
          {
            objc_enumerationMutation(components);
          }

          v13 = *(*(&v55 + 1) + 8 * v12);
          getICSEventClass();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [components countByEnumeratingWithState:&v55 objects:v59 count:16];
            if (v10)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
        if (v23)
        {
          [(BCSCalendarEventParser *)v23 _validatedICSString:v24, v25, v26, v27, v28, v29, v30];
        }

        v31 = v13;

        if (v31)
        {
          components2 = [v7 components];
          v33 = [components2 count];

          if (v33 == 1)
          {
            v34 = stringCopy;
          }

          else
          {
            components3 = [v7 components];
            [components3 removeAllObjects];

            components4 = [v7 components];
            [components4 addObject:v31];

            v34 = [v7 ICSStringWithOptions:0];
          }

          v22 = v34;

          goto LABEL_27;
        }
      }

      else
      {
LABEL_11:
      }

      v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v35)
      {
        [(BCSCalendarEventParser *)v35 _validatedICSString:v36, v37, v38, v39, v40, v41, v42];
      }
    }

    else
    {
      v43 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v43)
      {
        [(BCSCalendarEventParser *)v43 _validatedICSString:v44, v45, v46, v47, v48, v49, v50];
      }
    }

    v22 = 0;
LABEL_27:
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(BCSCalendarEventParser *)v14 _validatedICSString:v15, v16, v17, v18, v19, v20, v21];
    }

    v22 = 0;
  }

  v53 = *MEMORY[0x277D85DE8];

  return v22;
}

@end