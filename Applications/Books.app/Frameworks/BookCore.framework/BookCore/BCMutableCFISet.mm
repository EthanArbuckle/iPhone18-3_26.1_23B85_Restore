@interface BCMutableCFISet
- (BOOL)addCFIString:(id)string error:(id *)error;
- (BOOL)removeCFIString:(id)string error:(id *)error;
- (void)addCFI:(id)i;
- (void)removeCFI:(id)i;
- (void)subtractCFISet:(id)set;
- (void)unionCFISet:(id)set;
@end

@implementation BCMutableCFISet

- (void)addCFI:(id)i
{
  iCopy = i;
  if ([iCopy isRange])
  {
    v5 = objc_opt_class();
    cfis = [(BCCFISet *)self cfis];
    v10 = iCopy;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    v8 = [v5 _unionArray:cfis withArray:v7];

    v9 = [v8 mutableCopy];
    [(BCCFISet *)self setCFIs:v9];
  }
}

- (BOOL)addCFIString:(id)string error:(id *)error
{
  stringCopy = string;
  v12 = 0;
  v7 = [BCCFI cfiWithString:stringCopy error:&v12];
  v8 = v12;
  if (v7)
  {
    [(BCMutableCFISet *)self addCFI:v7];
    if (error)
    {
LABEL_3:
      v9 = v8;
      *error = v8;
    }
  }

  else
  {
    v11 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = stringCopy;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Cannot initialize BCCFI with string %@.  addCFIString: will return nil. error=%@", buf, 0x16u);
    }

    if (error)
    {
      goto LABEL_3;
    }
  }

  return v8 == 0;
}

- (void)unionCFISet:(id)set
{
  setCopy = set;
  v5 = objc_opt_class();
  cfis = [(BCCFISet *)self cfis];
  cfis2 = [setCopy cfis];

  v9 = [v5 _unionArray:cfis withArray:cfis2];

  v8 = [v9 mutableCopy];
  [(BCCFISet *)self setCFIs:v8];
}

- (void)removeCFI:(id)i
{
  iCopy = i;
  if ([iCopy isRange])
  {
    v5 = objc_opt_class();
    v12 = iCopy;
    v6 = [NSArray arrayWithObjects:&v12 count:1];
    v7 = [v5 _negateArray:v6];

    v8 = objc_opt_class();
    cfis = [(BCCFISet *)self cfis];
    v10 = [v8 _intersectArray:cfis withArray:v7];

    v11 = [v10 mutableCopy];
    [(BCCFISet *)self setCFIs:v11];
  }
}

- (BOOL)removeCFIString:(id)string error:(id *)error
{
  stringCopy = string;
  v12 = 0;
  v7 = [BCCFI cfiWithString:stringCopy error:&v12];
  v8 = v12;
  if (v7)
  {
    [(BCMutableCFISet *)self removeCFI:v7];
    if (error)
    {
LABEL_3:
      v9 = v8;
      *error = v8;
    }
  }

  else
  {
    v11 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E9A14(stringCopy, v8, v11);
    }

    if (error)
    {
      goto LABEL_3;
    }
  }

  return v8 == 0;
}

- (void)subtractCFISet:(id)set
{
  setCopy = set;
  v5 = objc_opt_class();
  cfis = [setCopy cfis];

  v11 = [v5 _negateArray:cfis];

  v7 = objc_opt_class();
  cfis2 = [(BCCFISet *)self cfis];
  v9 = [v7 _intersectArray:cfis2 withArray:v11];

  v10 = [v9 mutableCopy];
  [(BCCFISet *)self setCFIs:v10];
}

@end