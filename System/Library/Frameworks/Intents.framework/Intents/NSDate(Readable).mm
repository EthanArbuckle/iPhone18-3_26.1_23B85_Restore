@interface NSDate(Readable)
- (id)_intents_readableTitleWithLocalizer:()Readable metadata:timeZone:;
@end

@implementation NSDate(Readable)

- (id)_intents_readableTitleWithLocalizer:()Readable metadata:timeZone:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  locale = [v8 locale];
  v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v12 setLocale:locale];
  if (v10)
  {
    [v12 setTimeZone:v10];
  }

  v13 = v9;
  if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v14 = 0;
    goto LABEL_18;
  }

  if ([v13 format])
  {
    v14 = v13;
    if ([v13 format] != 2)
    {
      goto LABEL_18;
    }

    v15 = [v13 localizedFormatStringWithLocalizer:v8];
    [v12 setDateFormat:v15];

    goto LABEL_17;
  }

  [v12 setDoesRelativeDateFormatting:1];
  type = [v13 type];
  if (type == 2)
  {
    v18 = v12;
    dateStyle = 0;
LABEL_15:
    [v18 setDateStyle:dateStyle];
    timeStyle = [v13 timeStyle];
    v19 = v12;
    goto LABEL_16;
  }

  if (type != 1)
  {
    v14 = v13;
    if (type)
    {
      goto LABEL_18;
    }

    dateStyle = [v13 dateStyle];
    v18 = v12;
    goto LABEL_15;
  }

  [v12 setDateStyle:{objc_msgSend(v13, "dateStyle")}];
  v19 = v12;
  timeStyle = 0;
LABEL_16:
  [v19 setTimeStyle:timeStyle];
LABEL_17:
  v14 = v13;
LABEL_18:
  v21 = [v12 stringFromDate:self];

  return v21;
}

@end