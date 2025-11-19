@interface IKBookmark
+ (id)bookmarkWithBookmarkID:(int64_t)a3;
- (IKBookmark)initWithBookmarkID:(int64_t)a3;
- (id)description;
- (void)dealloc;
@end

@implementation IKBookmark

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IKBookmark;
  [(IKBookmark *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %@ (%ld), URL:(%@)>", NSStringFromClass(v4), -[IKBookmark title](self, "title"), -[IKBookmark bookmarkID](self, "bookmarkID"), -[IKBookmark URL](self, "URL")];
}

- (IKBookmark)initWithBookmarkID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = IKBookmark;
  result = [(IKBookmark *)&v5 init];
  if (result)
  {
    result->_bookmarkID = a3;
    *&result->_URL = 0u;
    *&result->_descr = 0u;
    result->_starred = 0;
    result->_privateSource = 0;
    result->_hashString = 0;
    result->_progress = -1.0;
    result->_progressDate = 0;
  }

  return result;
}

+ (id)bookmarkWithBookmarkID:(int64_t)a3
{
  v3 = [[IKBookmark alloc] initWithBookmarkID:a3];

  return v3;
}

@end