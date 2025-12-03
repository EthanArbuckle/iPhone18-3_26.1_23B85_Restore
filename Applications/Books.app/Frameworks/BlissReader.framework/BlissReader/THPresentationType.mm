@interface THPresentationType
+ (id)flowPresentationTypeInContext:(id)context;
+ (id)flowPresentationTypeInContext:(id)context pageSize:(CGSize)size;
+ (id)paginatedPresentationTypeInContext:(id)context;
+ (id)paginatedPresentationTypeInContext:(id)context pageSize:(CGSize)size;
- (BOOL)isCompactHeight;
- (BOOL)isCompactWidth;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualIncludingSize:(id)size;
- (BOOL)isFlow;
- (BOOL)isMutableViaDelegate;
- (BOOL)isPaginated;
- (CGSize)pageSize;
- (THPresentationType)initWithCoder:(id)coder;
- (THPresentationType)initWithString:(id)string context:(id)context;
- (UIEdgeInsets)contentInsets;
- (double)gutterWidth;
- (id)copyFixingSize;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)columnCount;
- (unint64_t)fontSize;
- (unint64_t)hash;
- (unint64_t)hashIncludingSize;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setName:(id)name;
@end

@implementation THPresentationType

- (void)setName:(id)name
{
  [(THPresentationType *)self willModify];
  v5 = [name copy];

  self->mName = v5;
}

- (THPresentationType)initWithString:(id)string context:(id)context
{
  v9.receiver = self;
  v9.super_class = THPresentationType;
  v5 = [(THPresentationType *)&v9 initWithContext:context];
  v6 = v5;
  if (v5)
  {
    [(THPresentationType *)v5 setName:string];
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
      pageSizeDelegate = [(THPresentationType *)self pageSizeDelegate];

      return [(THPresentationTypePageSizeDelegate *)pageSizeDelegate fontSizeForPresentationType:self];
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
      pageSizeDelegate = [(THPresentationType *)self pageSizeDelegate];

      return [(THPresentationTypePageSizeDelegate *)pageSizeDelegate columnCountForPresentationType:self];
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

  pageSizeDelegate = [(THPresentationType *)self pageSizeDelegate];

  [(THPresentationTypePageSizeDelegate *)pageSizeDelegate gutterWidthForPresentationType:self];
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
    pageSizeDelegate = [(THPresentationType *)self pageSizeDelegate];
    *&v3.f64[0] = v12;
    *&v2.f64[0] = v13;
    if (pageSizeDelegate)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithString:context:", -[THPresentationType name](self, "name"), -[THPresentationType context](self, "context")}];
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

+ (id)flowPresentationTypeInContext:(id)context
{
  v3 = [[self alloc] initWithString:@"THFlowPresentationType" context:context];

  return v3;
}

+ (id)paginatedPresentationTypeInContext:(id)context
{
  v3 = [[self alloc] initWithString:@"THPaginatedPresentationType" context:context];

  return v3;
}

+ (id)flowPresentationTypeInContext:(id)context pageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [self flowPresentationTypeInContext:context];
  [v6 setPageSize:{width, height}];
  return v6;
}

+ (id)paginatedPresentationTypeInContext:(id)context pageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [self paginatedPresentationTypeInContext:context];
  [v6 setPageSize:{width, height}];
  return v6;
}

- (BOOL)isFlow
{
  name = [(THPresentationType *)self name];

  return [(NSString *)name isEqualToString:@"THFlowPresentationType"];
}

- (BOOL)isPaginated
{
  name = [(THPresentationType *)self name];

  return [(NSString *)name isEqualToString:@"THPaginatedPresentationType"];
}

- (BOOL)isMutableViaDelegate
{
  pageSizeDelegate = [(THPresentationType *)self pageSizeDelegate];
  if (pageSizeDelegate)
  {
    LOBYTE(pageSizeDelegate) = self->_pageSize.height == CGSizeZero.height && self->_pageSize.width == CGSizeZero.width;
  }

  return pageSizeDelegate;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  name = [(THPresentationType *)self name];
  name2 = [v4 name];

  return [(NSString *)name isEqualToString:name2];
}

- (BOOL)isEqualIncludingSize:(id)size
{
  v5 = -[NSString isEqualToString:](-[THPresentationType name](self, "name"), "isEqualToString:", [size name]);
  if (v5)
  {
    [(THPresentationType *)self pageSize];
    [size pageSize];
    v5 = TSDNearlyEqualSizes();
    if (v5)
    {
      fontSize = [(THPresentationType *)self fontSize];
      if (fontSize != [size fontSize])
      {
        goto LABEL_11;
      }

      columnCount = [(THPresentationType *)self columnCount];
      if (columnCount != [size columnCount])
      {
        goto LABEL_11;
      }

      [(THPresentationType *)self gutterWidth];
      v9 = v8;
      [size gutterWidth];
      if (v9 != v10)
      {
        goto LABEL_11;
      }

      [(THPresentationType *)self contentInsets];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [size contentInsets];
      LOBYTE(v5) = 0;
      if (v14 == v22 && v12 == v19 && v18 == v21 && v16 == v20)
      {
        isCompactWidth = [(THPresentationType *)self isCompactWidth];
        if (isCompactWidth != [size isCompactWidth])
        {
LABEL_11:
          LOBYTE(v5) = 0;
          return v5;
        }

        isCompactHeight = [(THPresentationType *)self isCompactHeight];
        LOBYTE(v5) = isCompactHeight ^ [size isCompactHeight] ^ 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  name = [(THPresentationType *)self name];

  return [(NSString *)name hash];
}

- (unint64_t)hashIncludingSize
{
  v3 = self->_pageSize.width + [(NSString *)[(THPresentationType *)self name] hash]+ self->_pageSize.height + self->_fontSize + self->_columnCount + self->_gutterWidth + self->_contentInsets.left + self->_contentInsets.right + self->_contentInsets.bottom + self->_contentInsets.top;
  v4 = v3 + [(THPresentationType *)self isCompactWidth];
  return (v4 + [(THPresentationType *)self isCompactHeight]);
}

- (THPresentationType)initWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = THPresentationType;
  v4 = [(THPresentationType *)&v17 initWithContext:0];
  if (v4)
  {
    -[THPresentationType setName:](v4, "setName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"pageSize"];
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

    [coder decodeFloatForKey:@"fontSize"];
    v4->_fontSize = v9;
    v4->_columnCount = [coder decodeIntegerForKey:@"columnCount"];
    [coder decodeFloatForKey:@"gutterWidth"];
    v4->_gutterWidth = v10;
    v11 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"contentInsets"];
    if (v11)
    {
      [v11 TSDEdgeInsetsValue];
      v4->_contentInsets.top = v12;
      v4->_contentInsets.left = v13;
      v4->_contentInsets.bottom = v14;
      v4->_contentInsets.right = v15;
    }

    v4->_compactWidth = [coder decodeBoolForKey:@"compactWidth"];
    v4->_compactHeight = [coder decodeBoolForKey:@"compactHeight"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[THPresentationType name](self forKey:{"name"), @"name"}];
  [(THPresentationType *)self pageSize];
  [coder encodeObject:+[NSValue valueWithCGSize:](NSValue forKey:{"valueWithCGSize:"), @"pageSize"}];
  *&v5 = [(THPresentationType *)self fontSize];
  [coder encodeFloat:@"fontSize" forKey:v5];
  [coder encodeInteger:-[THPresentationType columnCount](self forKey:{"columnCount"), @"columnCount"}];
  [(THPresentationType *)self gutterWidth];
  *&v6 = v6;
  [coder encodeFloat:@"gutterWidth" forKey:v6];
  [(THPresentationType *)self contentInsets];
  [coder encodeObject:+[NSValue valueWithTSDEdgeInsets:](NSValue forKey:{"valueWithTSDEdgeInsets:"), @"contentInsets"}];
  [coder encodeBool:-[THPresentationType isCompactWidth](self forKey:{"isCompactWidth"), @"compactWidth"}];
  isCompactHeight = [(THPresentationType *)self isCompactHeight];

  [coder encodeBool:isCompactHeight forKey:@"compactHeight"];
}

@end