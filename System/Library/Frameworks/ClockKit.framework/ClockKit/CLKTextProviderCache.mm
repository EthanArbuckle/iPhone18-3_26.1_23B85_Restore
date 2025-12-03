@interface CLKTextProviderCache
- (id)_cacheForStyle:(id)style;
- (id)attributedStringAndSize:(CGSize *)size forMaxWidth:(double)width withStyle:(id)style generator:(id)generator;
- (id)attributedStringForIndex:(unint64_t)index withStyle:(id)style generator:(id)generator;
@end

@implementation CLKTextProviderCache

- (id)attributedStringAndSize:(CGSize *)size forMaxWidth:(double)width withStyle:(id)style generator:(id)generator
{
  v32 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  generatorCopy = generator;
  v12 = [(CLKTextProviderCache *)self _cacheForStyle:styleCopy];
  v13 = [v12 attributedStringAndSize:size forMaxWidth:width];
  if (!v13)
  {
    attributedStringCount = [v12 attributedStringCount];
    v15 = generatorCopy[2](generatorCopy, attributedStringCount);
    if (v15)
    {
      v13 = v15;
      while (1)
      {
        [v13 size];
        v17 = v16;
        v19 = v18;
        [styleCopy minimumScaleFactor];
        if (!CLKFloatEqualsFloat(v20, 0.0))
        {
          v21 = objc_alloc_init(MEMORY[0x277D74260]);
          [styleCopy minimumScaleFactor];
          [v21 setMinimumScaleFactor:?];
          [v13 boundingRectWithSize:1 options:v21 context:{width, 0.0}];
          v24 = v23;
          v25 = v22;
          if (v22 < v19 || CLKFloatEqualsFloat(v22, v19))
          {
            v19 = v25;
            v17 = v24;
          }
        }

        [v12 addAttributedString:v13 withSize:{v17, v19}];
        if (attributedStringCount > 9 || v17 <= width)
        {
          break;
        }

        attributedStringCount = [v12 attributedStringCount];
        v13 = generatorCopy[2](generatorCopy, attributedStringCount);
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      if (attributedStringCount >= 0xA)
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

      if (size)
      {
        size->width = v17;
        size->height = v19;
      }
    }

    else
    {
LABEL_12:
      v13 = [v12 smallestAttributedStringAndSize:size];
    }
  }

  return v13;
}

- (id)attributedStringForIndex:(unint64_t)index withStyle:(id)style generator:(id)generator
{
  generatorCopy = generator;
  v9 = [(CLKTextProviderCache *)self _cacheForStyle:style];
  attributedStringCount = [v9 attributedStringCount];
  if (attributedStringCount <= index)
  {
    v12 = attributedStringCount;
    v13 = 0;
    do
    {
      v11 = generatorCopy[2](generatorCopy, v12);

      if (!v11)
      {
        break;
      }

      [v11 size];
      [v9 addAttributedString:v11 withSize:?];
      ++v12;
      v13 = v11;
    }

    while (v12 <= index);
  }

  else
  {
    v11 = [v9 attributedStringForIndex:index];
  }

  return v11;
}

- (id)_cacheForStyle:(id)style
{
  styleCopy = style;
  cachesByStyle = self->_cachesByStyle;
  if (!cachesByStyle)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_cachesByStyle;
    self->_cachesByStyle = v6;

    cachesByStyle = self->_cachesByStyle;
  }

  v8 = [(NSMutableDictionary *)cachesByStyle objectForKeyedSubscript:styleCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(_StringAndWidthCache);
    [(NSMutableDictionary *)self->_cachesByStyle setObject:v8 forKeyedSubscript:styleCopy];
  }

  return v8;
}

@end