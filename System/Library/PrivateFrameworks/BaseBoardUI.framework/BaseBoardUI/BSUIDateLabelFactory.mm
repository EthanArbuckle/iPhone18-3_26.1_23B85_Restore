@interface BSUIDateLabelFactory
+ (id)sharedInstance;
- (BSUIDateLabelFactory)init;
- (id)_labelWithStartDate:(void *)a3 endDate:(void *)a4 timeZone:(uint64_t)a5 allDay:(uint64_t)a6 forStyle:(uint64_t)a7 forType:;
- (id)combinedDateLabelWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6 forStyle:(int64_t)a7;
- (id)endLabelWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6 forStyle:(int64_t)a7;
- (id)startLabelWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6 forStyle:(int64_t)a7;
- (int64_t)styleForLabel:(id)a3;
- (void)dealloc;
- (void)recycleLabel:(id)a3;
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

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__purgeRecycledLabels name:*MEMORY[0x1E69DDAD8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];

  v4.receiver = self;
  v4.super_class = BSUIDateLabelFactory;
  [(BSUIDateLabelFactory *)&v4 dealloc];
}

- (id)_labelWithStartDate:(void *)a3 endDate:(void *)a4 timeZone:(uint64_t)a5 allDay:(uint64_t)a6 forStyle:(uint64_t)a7 forType:
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  if (a1)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInt:a6];
    v17 = [*(a1 + 8) objectForKey:v16];
    v18 = [v17 anyObject];
    if (v18)
    {
      [v17 removeObject:v18];
LABEL_4:
      [v18 startCoalescingUpdates];
      [v18 setLabelType:a7];
      [v18 setStartDate:v13 withTimeZone:v15];
      if (v14)
      {
        v19 = v14;
      }

      else
      {
        v19 = v13;
      }

      [v18 setEndDate:v19 withTimeZone:v15];
      [v18 setAllDay:a5];
      [v18 stopCoalescingUpdates];
      goto LABEL_8;
    }

    if (a6 == 1)
    {
      v21 = off_1E76B7618;
    }

    else
    {
      if (a6)
      {
        v18 = 0;
        goto LABEL_8;
      }

      v21 = off_1E76B75F0;
    }

    v18 = objc_alloc_init(*v21);
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_8:

    goto LABEL_9;
  }

  v18 = 0;
LABEL_9:

  return v18;
}

- (id)startLabelWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6 forStyle:(int64_t)a7
{
  v7 = [(BSUIDateLabelFactory *)self _labelWithStartDate:a3 endDate:a4 timeZone:a5 allDay:a6 forStyle:a7 forType:0];

  return v7;
}

- (id)endLabelWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6 forStyle:(int64_t)a7
{
  v7 = [(BSUIDateLabelFactory *)self _labelWithStartDate:a3 endDate:a4 timeZone:a5 allDay:a6 forStyle:a7 forType:1];

  return v7;
}

- (id)combinedDateLabelWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6 forStyle:(int64_t)a7
{
  v7 = [(BSUIDateLabelFactory *)self _labelWithStartDate:a3 endDate:a4 timeZone:a5 allDay:a6 forStyle:a7 forType:2 * (a4 != 0)];

  return v7;
}

- (void)recycleLabel:(id)a3
{
  v7 = a3;
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

    [v7 prepareForReuse];
    if ([v6 count] <= 9)
    {
      [v6 addObject:v7];
    }
  }
}

- (int64_t)styleForLabel:(id)a3
{
  v3 = a3;
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