@interface _StringAndWidthCache
- (_StringAndWidthCache)init;
- (id)attributedStringAndSize:(CGSize *)a3 forMaxWidth:(double)a4;
- (id)attributedStringForIndex:(unint64_t)a3;
- (id)smallestAttributedStringAndSize:(CGSize *)a3;
- (void)addAttributedString:(id)a3 withSize:(CGSize)a4;
@end

@implementation _StringAndWidthCache

- (_StringAndWidthCache)init
{
  v8.receiver = self;
  v8.super_class = _StringAndWidthCache;
  v2 = [(_StringAndWidthCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    attributedStrings = v2->_attributedStrings;
    v2->_attributedStrings = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    boxedSizes = v2->_boxedSizes;
    v2->_boxedSizes = v5;
  }

  return v2;
}

- (void)addAttributedString:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [(NSMutableArray *)self->_attributedStrings addObject:a3];
  boxedSizes = self->_boxedSizes;
  v8 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  [(NSMutableArray *)boxedSizes addObject:v8];
}

- (id)attributedStringAndSize:(CGSize *)a3 forMaxWidth:(double)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  boxedSizes = self->_boxedSizes;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60___StringAndWidthCache_attributedStringAndSize_forMaxWidth___block_invoke;
  v7[3] = &unk_278A1F998;
  *&v7[6] = a4;
  v7[4] = self;
  v7[5] = &v8;
  v7[7] = a3;
  [(NSMutableArray *)boxedSizes enumerateObjectsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)attributedStringForIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_attributedStrings count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_attributedStrings objectAtIndex:a3];
  }

  return v5;
}

- (id)smallestAttributedStringAndSize:(CGSize *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v22 = 0;
  v23 = 0;
  v21 = &unk_2370AF046;
  v5 = [(NSMutableArray *)self->_boxedSizes lastObject];
  [v5 CGSizeValue];
  v22 = v6;
  v23 = v7;

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = [(NSMutableArray *)self->_attributedStrings lastObject];
  boxedSizes = self->_boxedSizes;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56___StringAndWidthCache_smallestAttributedStringAndSize___block_invoke;
  v11[3] = &unk_278A1F9C0;
  v11[5] = &v18;
  v11[6] = &v12;
  v11[4] = self;
  [(NSMutableArray *)boxedSizes enumerateObjectsUsingBlock:v11];
  if (a3)
  {
    *a3 = v19[2];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

@end