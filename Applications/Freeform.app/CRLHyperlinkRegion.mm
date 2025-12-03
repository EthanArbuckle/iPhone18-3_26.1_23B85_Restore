@interface CRLHyperlinkRegion
+ (id)hyperlinkRegionWithURL:(id)l bezierPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (CRLHyperlinkRegion)initWithURL:(id)l bezierPath:(id)path;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRLHyperlinkRegion

+ (id)hyperlinkRegionWithURL:(id)l bezierPath:(id)path
{
  pathCopy = path;
  lCopy = l;
  v8 = [[self alloc] initWithURL:lCopy bezierPath:pathCopy];

  return v8;
}

- (CRLHyperlinkRegion)initWithURL:(id)l bezierPath:(id)path
{
  lCopy = l;
  pathCopy = path;
  v8 = pathCopy;
  if (lCopy)
  {
    if (pathCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10135DC20();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10135DC34();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10135DCE4();
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v9);
  }

  v10 = [NSString stringWithUTF8String:"[CRLHyperlinkRegion initWithURL:bezierPath:]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLHyperlinkRegion.m"];
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:29 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "aURL != nil"];

  if (!v8)
  {
LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135DD0C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135DD34();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135DDE4();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLHyperlinkRegion initWithURL:bezierPath:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLHyperlinkRegion.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:30 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "aBezierPath != nil"];
  }

LABEL_22:
  v21.receiver = self;
  v21.super_class = CRLHyperlinkRegion;
  v15 = [(CRLHyperlinkRegion *)&v21 init];
  if (v15)
  {
    v16 = [lCopy copy];
    URL = v15->_URL;
    v15->_URL = v16;

    v18 = [v8 copy];
    bezierPath = v15->_bezierPath;
    v15->_bezierPath = v18;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6 && ((-[CRLHyperlinkRegion URL](self, "URL"), v7 = objc_claimAutoreleasedReturnValue(), [v6 URL], v8 = objc_claimAutoreleasedReturnValue(), !(v7 | v8)) || (v9 = v8, v10 = objc_msgSend(v7, "isEqual:", v8), v9, v7, v10)))
  {
    bezierPath = [(CRLHyperlinkRegion *)self bezierPath];
    bezierPath2 = [v6 bezierPath];
    v13 = [bezierPath isEqual:bezierPath2];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = [(CRLHyperlinkRegion *)self URL];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  URL = self->_URL;
  [(CRLBezierPath *)self->_bezierPath bounds];
  v3 = NSStringFromCGRect(v7);
  v4 = [NSString stringWithFormat:@"URL={%@} bounds=%@", URL, v3];

  return v4;
}

@end