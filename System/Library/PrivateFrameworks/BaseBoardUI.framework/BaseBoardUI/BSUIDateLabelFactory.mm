@interface BSUIDateLabelFactory
+ (id)sharedInstance;
- (BSUIDateLabelFactory)init;
- (id)_labelWithStartDate:(void *)date endDate:(void *)endDate timeZone:(uint64_t)zone allDay:(uint64_t)day forStyle:(uint64_t)style forType:;
- (id)combinedDateLabelWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone allDay:(BOOL)day forStyle:(int64_t)style;
- (id)endLabelWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone allDay:(BOOL)day forStyle:(int64_t)style;
- (id)startLabelWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone allDay:(BOOL)day forStyle:(int64_t)style;
- (int64_t)styleForLabel:(id)label;
- (void)dealloc;
- (void)recycleLabel:(id)label;
@end

@implementation BSUIDateLabelFactory

+ (id)sharedInstance
{
  if (qword_1ED61C7D0 != -1)
  {
    dispatch_once(&qword_1ED61C7D0, &__block_literal_global_2);
  }

  v3 = _MergedGlobals_10;

  return v3;
}

uint64_t __38__BSUIDateLabelFactory_sharedInstance__block_invoke()
{
  _MergedGlobals_10 = objc_alloc_init(BSUIDateLabelFactory);

  return MEMORY[0x1EEE66BB8]();
}

- (BSUIDateLabelFactory)init
{
  v7.receiver = self;
  v7.super_class = BSUIDateLabelFactory;
  v2 = [(BSUIDateLabelFactory *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    recycledLabelsByStyle = v2->_recycledLabelsByStyle;
    v2->_recycledLabelsByStyle = v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__purgeRecycledLabels name:*MEMORY[0x1E69DDAD8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];

  v4.receiver = self;
  v4.super_class = BSUIDateLabelFactory;
  [(BSUIDateLabelFactory *)&v4 dealloc];
}

- (id)_labelWithStartDate:(void *)date endDate:(void *)endDate timeZone:(uint64_t)zone allDay:(uint64_t)day forStyle:(uint64_t)style forType:
{
  v13 = a2;
  dateCopy = date;
  endDateCopy = endDate;
  if (self)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInt:day];
    v17 = [*(self + 8) objectForKey:v16];
    anyObject = [v17 anyObject];
    if (anyObject)
    {
      [v17 removeObject:anyObject];
LABEL_4:
      [anyObject startCoalescingUpdates];
      [anyObject setLabelType:style];
      [anyObject setStartDate:v13 withTimeZone:endDateCopy];
      if (dateCopy)
      {
        v19 = dateCopy;
      }

      else
      {
        v19 = v13;
      }

      [anyObject setEndDate:v19 withTimeZone:endDateCopy];
      [anyObject setAllDay:zone];
      [anyObject stopCoalescingUpdates];
      goto LABEL_8;
    }

    if (day == 1)
    {
      v21 = off_1E76B7618;
    }

    else
    {
      if (day)
      {
        anyObject = 0;
        goto LABEL_8;
      }

      v21 = off_1E76B75F0;
    }

    anyObject = objc_alloc_init(*v21);
    if (anyObject)
    {
      goto LABEL_4;
    }

LABEL_8:

    goto LABEL_9;
  }

  anyObject = 0;
LABEL_9:

  return anyObject;
}

- (id)startLabelWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone allDay:(BOOL)day forStyle:(int64_t)style
{
  v7 = [(BSUIDateLabelFactory *)self _labelWithStartDate:date endDate:endDate timeZone:zone allDay:day forStyle:style forType:0];

  return v7;
}

- (id)endLabelWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone allDay:(BOOL)day forStyle:(int64_t)style
{
  v7 = [(BSUIDateLabelFactory *)self _labelWithStartDate:date endDate:endDate timeZone:zone allDay:day forStyle:style forType:1];

  return v7;
}

- (id)combinedDateLabelWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone allDay:(BOOL)day forStyle:(int64_t)style
{
  v7 = [(BSUIDateLabelFactory *)self _labelWithStartDate:date endDate:endDate timeZone:zone allDay:day forStyle:style forType:2 * (endDate != 0)];

  return v7;
}

- (void)recycleLabel:(id)label
{
  labelCopy = label;
  v4 = [(BSUIDateLabelFactory *)self styleForLabel:?];
  if (v4 != -1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    v6 = [(NSMutableDictionary *)self->_recycledLabelsByStyle objectForKey:v5];
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DFA8] set];
      [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
    }

    [labelCopy prepareForReuse];
    if ([v6 count] <= 9)
    {
      [v6 addObject:labelCopy];
    }
  }
}

- (int64_t)styleForLabel:(id)label
{
  labelCopy = label;
  v4 = objc_opt_class();
  if ([v4 isEqual:objc_opt_class()])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqual:objc_opt_class()] - 1;
  }

  return v5;
}

@end