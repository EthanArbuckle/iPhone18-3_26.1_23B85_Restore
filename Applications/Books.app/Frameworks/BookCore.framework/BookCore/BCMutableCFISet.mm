@interface BCMutableCFISet
- (BOOL)addCFIString:(id)a3 error:(id *)a4;
- (BOOL)removeCFIString:(id)a3 error:(id *)a4;
- (void)addCFI:(id)a3;
- (void)removeCFI:(id)a3;
- (void)subtractCFISet:(id)a3;
- (void)unionCFISet:(id)a3;
@end

@implementation BCMutableCFISet

- (void)addCFI:(id)a3
{
  v4 = a3;
  if ([v4 isRange])
  {
    v5 = objc_opt_class();
    v6 = [(BCCFISet *)self cfis];
    v10 = v4;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    v8 = [v5 _unionArray:v6 withArray:v7];

    v9 = [v8 mutableCopy];
    [(BCCFISet *)self setCFIs:v9];
  }
}

- (BOOL)addCFIString:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v7 = [BCCFI cfiWithString:v6 error:&v12];
  v8 = v12;
  if (v7)
  {
    [(BCMutableCFISet *)self addCFI:v7];
    if (a4)
    {
LABEL_3:
      v9 = v8;
      *a4 = v8;
    }
  }

  else
  {
    v11 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Cannot initialize BCCFI with string %@.  addCFIString: will return nil. error=%@", buf, 0x16u);
    }

    if (a4)
    {
      goto LABEL_3;
    }
  }

  return v8 == 0;
}

- (void)unionCFISet:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(BCCFISet *)self cfis];
  v7 = [v4 cfis];

  v9 = [v5 _unionArray:v6 withArray:v7];

  v8 = [v9 mutableCopy];
  [(BCCFISet *)self setCFIs:v8];
}

- (void)removeCFI:(id)a3
{
  v4 = a3;
  if ([v4 isRange])
  {
    v5 = objc_opt_class();
    v12 = v4;
    v6 = [NSArray arrayWithObjects:&v12 count:1];
    v7 = [v5 _negateArray:v6];

    v8 = objc_opt_class();
    v9 = [(BCCFISet *)self cfis];
    v10 = [v8 _intersectArray:v9 withArray:v7];

    v11 = [v10 mutableCopy];
    [(BCCFISet *)self setCFIs:v11];
  }
}

- (BOOL)removeCFIString:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v7 = [BCCFI cfiWithString:v6 error:&v12];
  v8 = v12;
  if (v7)
  {
    [(BCMutableCFISet *)self removeCFI:v7];
    if (a4)
    {
LABEL_3:
      v9 = v8;
      *a4 = v8;
    }
  }

  else
  {
    v11 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E9A14(v6, v8, v11);
    }

    if (a4)
    {
      goto LABEL_3;
    }
  }

  return v8 == 0;
}

- (void)subtractCFISet:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 cfis];

  v11 = [v5 _negateArray:v6];

  v7 = objc_opt_class();
  v8 = [(BCCFISet *)self cfis];
  v9 = [v7 _intersectArray:v8 withArray:v11];

  v10 = [v9 mutableCopy];
  [(BCCFISet *)self setCFIs:v10];
}

@end