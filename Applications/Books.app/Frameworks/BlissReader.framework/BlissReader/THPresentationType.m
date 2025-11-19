@interface THPresentationType
+ (id)flowPresentationTypeInContext:(id)a3;
+ (id)flowPresentationTypeInContext:(id)a3 pageSize:(CGSize)a4;
+ (id)paginatedPresentationTypeInContext:(id)a3;
+ (id)paginatedPresentationTypeInContext:(id)a3 pageSize:(CGSize)a4;
- (BOOL)isCompactHeight;
- (BOOL)isCompactWidth;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualIncludingSize:(id)a3;
- (BOOL)isFlow;
- (BOOL)isMutableViaDelegate;
- (BOOL)isPaginated;
- (CGSize)pageSize;
- (THPresentationType)initWithCoder:(id)a3;
- (THPresentationType)initWithString:(id)a3 context:(id)a4;
- (UIEdgeInsets)contentInsets;
- (double)gutterWidth;
- (id)copyFixingSize;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)columnCount;
- (unint64_t)fontSize;
- (unint64_t)hash;
- (unint64_t)hashIncludingSize;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setName:(id)a3;
@end

@implementation THPresentationType

- (void)setName:(id)a3
{
  [(THPresentationType *)self willModify];
  v5 = [a3 copy];

  self->mName = v5;
}

- (THPresentationType)initWithString:(id)a3 context:(id)a4
{
  v9.receiver = self;
  v9.super_class = THPresentationType;
  v5 = [(THPresentationType *)&v9 initWithContext:a4];
  v6 = v5;
  if (v5)
  {
    [(THPresentationType *)v5 setName:a3];
    v6->_pageSize = CGSizeZero;
    v6->_fontSize = 0;
    v6->_columnCount = 0;
    v6->_gutterWidth = 0.0;
    v7 = *&TSDEdgeInsetsZero[2];
    *&v6->_contentInsets.top = *TSDEdgeInsetsZero;
    *&v6->_contentInsets.bottom = v7;
    v6->_compactWidth = -1;
    v6->_compactHeight = -1;
  }

  return v6;
}

- (void)dealloc
{
  self->mName = 0;
  v3.receiver = self;
  v3.super_class = THPresentationType;
  [(THPresentationType *)&v3 dealloc];
}

- (CGSize)pageSize
{
  width = self->_pageSize.width;
  height = self->_pageSize.height;
  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    [(THPresentationTypePageSizeDelegate *)[(THPresentationType *)self pageSizeDelegate] pageSizeForPresentationType:self];
  }

  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)fontSize
{
  result = self->_fontSize;
  if (!result)
  {
    result = [(THPresentationType *)self pageSizeDelegate];
    if (result)
    {
      v4 = [(THPresentationType *)self pageSizeDelegate];

      return [(THPresentationTypePageSizeDelegate *)v4 fontSizeForPresentationType:self];
    }
  }

  return result;
}

- (int64_t)columnCount
{
  result = self->_columnCount;
  if (!result)
  {
    result = [(THPresentationType *)self pageSizeDelegate];
    if (result)
    {
      v4 = [(THPresentationType *)self pageSizeDelegate];

      return [(THPresentationTypePageSizeDelegate *)v4 columnCountForPresentationType:self];
    }
  }

  return result;
}

- (double)gutterWidth
{
  gutterWidth = self->_gutterWidth;
  if (gutterWidth != 0.0 || ![(THPresentationType *)self pageSizeDelegate])
  {
    return gutterWidth;
  }

  v4 = [(THPresentationType *)self pageSizeDelegate];

  [(THPresentationTypePageSizeDelegate *)v4 gutterWidthForPresentationType:self];
  return result;
}

- (UIEdgeInsets)contentInsets
{
  v2 = *&self->_contentInsets.top;
  v3 = *&self->_contentInsets.bottom;
  left = self->_contentInsets.left;
  right = self->_contentInsets.right;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v2, TSDEdgeInsetsZero[0]), vceqq_f64(v3, TSDEdgeInsetsZero[1])))))
  {
    v12 = *&self->_contentInsets.bottom;
    v13 = *&self->_contentInsets.top;
    v7 = [(THPresentationType *)self pageSizeDelegate];
    *&v3.f64[0] = v12;
    *&v2.f64[0] = v13;
    if (v7)
    {
      [(THPresentationTypePageSizeDelegate *)[(THPresentationType *)self pageSizeDelegate] contentInsetsForPresentationType:self];
      left = v8;
      right = v9;
    }
  }

  v10 = left;
  v11 = right;
  result.bottom = v3.f64[0];
  result.top = v2.f64[0];
  result.right = v11;
  result.left = v10;
  return result;
}

- (BOOL)isCompactWidth
{
  compactWidth = self->_compactWidth;
  if (compactWidth < 0)
  {
    return [(THPresentationTypePageSizeDelegate *)self->_pageSizeDelegate isCompactWidthForPresentationType:self];
  }

  else
  {
    return compactWidth != 0;
  }
}

- (BOOL)isCompactHeight
{
  compactHeight = self->_compactHeight;
  if (compactHeight < 0)
  {
    return [(THPresentationTypePageSizeDelegate *)self->_pageSizeDelegate isCompactHeightForPresentationType:self];
  }

  else
  {
    return compactHeight != 0;
  }
}

- (id)copyFixingSize
{
  v3 = [objc_allocWithZone(objc_opt_class()) initWithString:-[THPresentationType name](self context:{"name"), -[THPresentationType context](self, "context")}];
  [(THPresentationType *)self pageSize];
  [v3 setPageSize:?];
  [v3 setFontSize:{-[THPresentationType fontSize](self, "fontSize")}];
  [v3 setColumnCount:{-[THPresentationType columnCount](self, "columnCount")}];
  [(THPresentationType *)self gutterWidth];
  [v3 setGutterWidth:?];
  [(THPresentationType *)self contentInsets];
  [v3 setContentInsets:?];
  v3[16] = [(THPresentationType *)self isCompactWidth];
  v3[17] = [(THPresentationType *)self isCompactHeight];
  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithString:context:", -[THPresentationType name](self, "name"), -[THPresentationType context](self, "context")}];
  [v4 setPageSizeDelegate:self->_pageSizeDelegate];
  [v4 setPageSize:{self->_pageSize.width, self->_pageSize.height}];
  [v4 setFontSize:self->_fontSize];
  [v4 setColumnCount:self->_columnCount];
  [v4 setGutterWidth:self->_gutterWidth];
  [v4 setContentInsets:{self->_contentInsets.top, self->_contentInsets.left, self->_contentInsets.bottom, self->_contentInsets.right}];
  v4[16] = self->_compactWidth;
  v4[17] = self->_compactHeight;
  return v4;
}

+ (id)flowPresentationTypeInContext:(id)a3
{
  v3 = [[a1 alloc] initWithString:@"THFlowPresentationType" context:a3];

  return v3;
}

+ (id)paginatedPresentationTypeInContext:(id)a3
{
  v3 = [[a1 alloc] initWithString:@"THPaginatedPresentationType" context:a3];

  return v3;
}

+ (id)flowPresentationTypeInContext:(id)a3 pageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [a1 flowPresentationTypeInContext:a3];
  [v6 setPageSize:{width, height}];
  return v6;
}

+ (id)paginatedPresentationTypeInContext:(id)a3 pageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [a1 paginatedPresentationTypeInContext:a3];
  [v6 setPageSize:{width, height}];
  return v6;
}

- (BOOL)isFlow
{
  v2 = [(THPresentationType *)self name];

  return [(NSString *)v2 isEqualToString:@"THFlowPresentationType"];
}

- (BOOL)isPaginated
{
  v2 = [(THPresentationType *)self name];

  return [(NSString *)v2 isEqualToString:@"THPaginatedPresentationType"];
}

- (BOOL)isMutableViaDelegate
{
  v3 = [(THPresentationType *)self pageSizeDelegate];
  if (v3)
  {
    LOBYTE(v3) = self->_pageSize.height == CGSizeZero.height && self->_pageSize.width == CGSizeZero.width;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  v5 = [(THPresentationType *)self name];
  v6 = [v4 name];

  return [(NSString *)v5 isEqualToString:v6];
}

- (BOOL)isEqualIncludingSize:(id)a3
{
  v5 = -[NSString isEqualToString:](-[THPresentationType name](self, "name"), "isEqualToString:", [a3 name]);
  if (v5)
  {
    [(THPresentationType *)self pageSize];
    [a3 pageSize];
    v5 = TSDNearlyEqualSizes();
    if (v5)
    {
      v6 = [(THPresentationType *)self fontSize];
      if (v6 != [a3 fontSize])
      {
        goto LABEL_11;
      }

      v7 = [(THPresentationType *)self columnCount];
      if (v7 != [a3 columnCount])
      {
        goto LABEL_11;
      }

      [(THPresentationType *)self gutterWidth];
      v9 = v8;
      [a3 gutterWidth];
      if (v9 != v10)
      {
        goto LABEL_11;
      }

      [(THPresentationType *)self contentInsets];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [a3 contentInsets];
      LOBYTE(v5) = 0;
      if (v14 == v22 && v12 == v19 && v18 == v21 && v16 == v20)
      {
        v23 = [(THPresentationType *)self isCompactWidth];
        if (v23 != [a3 isCompactWidth])
        {
LABEL_11:
          LOBYTE(v5) = 0;
          return v5;
        }

        v24 = [(THPresentationType *)self isCompactHeight];
        LOBYTE(v5) = v24 ^ [a3 isCompactHeight] ^ 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(THPresentationType *)self name];

  return [(NSString *)v2 hash];
}

- (unint64_t)hashIncludingSize
{
  v3 = self->_pageSize.width + [(NSString *)[(THPresentationType *)self name] hash]+ self->_pageSize.height + self->_fontSize + self->_columnCount + self->_gutterWidth + self->_contentInsets.left + self->_contentInsets.right + self->_contentInsets.bottom + self->_contentInsets.top;
  v4 = v3 + [(THPresentationType *)self isCompactWidth];
  return (v4 + [(THPresentationType *)self isCompactHeight]);
}

- (THPresentationType)initWithCoder:(id)a3
{
  v17.receiver = self;
  v17.super_class = THPresentationType;
  v4 = [(THPresentationType *)&v17 initWithContext:0];
  if (v4)
  {
    -[THPresentationType setName:](v4, "setName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"pageSize"];
    p_pageSize = &v4->_pageSize;
    if (v5)
    {
      [v5 CGSizeValue];
      p_pageSize->width = v7;
      v4->_pageSize.height = v8;
    }

    else
    {
      *p_pageSize = CGSizeZero;
    }

    [a3 decodeFloatForKey:@"fontSize"];
    v4->_fontSize = v9;
    v4->_columnCount = [a3 decodeIntegerForKey:@"columnCount"];
    [a3 decodeFloatForKey:@"gutterWidth"];
    v4->_gutterWidth = v10;
    v11 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"contentInsets"];
    if (v11)
    {
      [v11 TSDEdgeInsetsValue];
      v4->_contentInsets.top = v12;
      v4->_contentInsets.left = v13;
      v4->_contentInsets.bottom = v14;
      v4->_contentInsets.right = v15;
    }

    v4->_compactWidth = [a3 decodeBoolForKey:@"compactWidth"];
    v4->_compactHeight = [a3 decodeBoolForKey:@"compactHeight"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[THPresentationType name](self forKey:{"name"), @"name"}];
  [(THPresentationType *)self pageSize];
  [a3 encodeObject:+[NSValue valueWithCGSize:](NSValue forKey:{"valueWithCGSize:"), @"pageSize"}];
  *&v5 = [(THPresentationType *)self fontSize];
  [a3 encodeFloat:@"fontSize" forKey:v5];
  [a3 encodeInteger:-[THPresentationType columnCount](self forKey:{"columnCount"), @"columnCount"}];
  [(THPresentationType *)self gutterWidth];
  *&v6 = v6;
  [a3 encodeFloat:@"gutterWidth" forKey:v6];
  [(THPresentationType *)self contentInsets];
  [a3 encodeObject:+[NSValue valueWithTSDEdgeInsets:](NSValue forKey:{"valueWithTSDEdgeInsets:"), @"contentInsets"}];
  [a3 encodeBool:-[THPresentationType isCompactWidth](self forKey:{"isCompactWidth"), @"compactWidth"}];
  v7 = [(THPresentationType *)self isCompactHeight];

  [a3 encodeBool:v7 forKey:@"compactHeight"];
}

@end