@interface CLKTextProviderCache
- (id)_cacheForStyle:(id)a3;
- (id)attributedStringAndSize:(CGSize *)a3 forMaxWidth:(double)a4 withStyle:(id)a5 generator:(id)a6;
- (id)attributedStringForIndex:(unint64_t)a3 withStyle:(id)a4 generator:(id)a5;
@end

@implementation CLKTextProviderCache

- (id)attributedStringAndSize:(CGSize *)a3 forMaxWidth:(double)a4 withStyle:(id)a5 generator:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = [(CLKTextProviderCache *)self _cacheForStyle:v10];
  v13 = [v12 attributedStringAndSize:a3 forMaxWidth:a4];
  if (!v13)
  {
    v14 = [v12 attributedStringCount];
    v15 = v11[2](v11, v14);
    if (v15)
    {
      v13 = v15;
      while (1)
      {
        [v13 size];
        v17 = v16;
        v19 = v18;
        [v10 minimumScaleFactor];
        if (!CLKFloatEqualsFloat(v20, 0.0))
        {
          v21 = objc_alloc_init(MEMORY[0x277D74260]);
          [v10 minimumScaleFactor];
          [v21 setMinimumScaleFactor:?];
          [v13 boundingRectWithSize:1 options:v21 context:{a4, 0.0}];
          v24 = v23;
          v25 = v22;
          if (v22 < v19 || CLKFloatEqualsFloat(v22, v19))
          {
            v19 = v25;
            v17 = v24;
          }
        }

        [v12 addAttributedString:v13 withSize:{v17, v19}];
        if (v14 > 9 || v17 <= a4)
        {
          break;
        }

        v14 = [v12 attributedStringCount];
        v13 = v11[2](v11, v14);
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      if (v14 >= 0xA)
      {
        v26 = CLKLoggingObjectForDomain(4);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = 134218242;
          v29 = 10;
          v30 = 2112;
          v31 = v13;
          _os_log_error_impl(&dword_23702D000, v26, OS_LOG_TYPE_ERROR, "Cache: Misbehaving textprovider? No string fits after %ld tries. Last string returned is %@", &v28, 0x16u);
        }
      }

      if (a3)
      {
        a3->width = v17;
        a3->height = v19;
      }
    }

    else
    {
LABEL_12:
      v13 = [v12 smallestAttributedStringAndSize:a3];
    }
  }

  return v13;
}

- (id)attributedStringForIndex:(unint64_t)a3 withStyle:(id)a4 generator:(id)a5
{
  v8 = a5;
  v9 = [(CLKTextProviderCache *)self _cacheForStyle:a4];
  v10 = [v9 attributedStringCount];
  if (v10 <= a3)
  {
    v12 = v10;
    v13 = 0;
    do
    {
      v11 = v8[2](v8, v12);

      if (!v11)
      {
        break;
      }

      [v11 size];
      [v9 addAttributedString:v11 withSize:?];
      ++v12;
      v13 = v11;
    }

    while (v12 <= a3);
  }

  else
  {
    v11 = [v9 attributedStringForIndex:a3];
  }

  return v11;
}

- (id)_cacheForStyle:(id)a3
{
  v4 = a3;
  cachesByStyle = self->_cachesByStyle;
  if (!cachesByStyle)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_cachesByStyle;
    self->_cachesByStyle = v6;

    cachesByStyle = self->_cachesByStyle;
  }

  v8 = [(NSMutableDictionary *)cachesByStyle objectForKeyedSubscript:v4];
  if (!v8)
  {
    v8 = objc_alloc_init(_StringAndWidthCache);
    [(NSMutableDictionary *)self->_cachesByStyle setObject:v8 forKeyedSubscript:v4];
  }

  return v8;
}

@end