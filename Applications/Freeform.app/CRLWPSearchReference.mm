@interface CRLWPSearchReference
+ (id)searchReferenceWithStorage:(id)a3 selection:(id)a4 searchCanvasDelegate:(id)a5;
+ (id)searchReferenceWithStorage:(id)a3 selection:(id)a4 selectionPath:(id)a5;
- (BOOL)contains:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInsertionPoint;
- (BOOL)isReplaceable;
- (BOOL)isSelectable;
- (CGPoint)connectionLineUnscaledPoint;
- (CGPoint)searchReferencePoint;
- (CGRect)searchReferenceLayoutFrame;
- (CRLSelectionPath)selectionPath;
- (CRLWPSearchReference)initWithStorage:(id)a3 selection:(id)a4 searchCanvasDelegate:(id)a5;
- (CRLWPSearchReference)initWithStorage:(id)a3 selection:(id)a4 selectionPath:(id)a5;
- (CRLWPSearchReference)initWithStorage:(id)a3 selectionPath:(id)a4;
- (NSString)description;
- (_NSRange)range;
- (id)commandForReplacingWithString:(id)a3 options:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)p_selectionForComparison;
- (id)p_selectionWithRange:(_NSRange)a3;
- (id)searchReferenceEnd;
- (id)searchReferenceForReplacingWithString:(id)a3 options:(unint64_t)a4;
- (id)searchReferenceStart;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)setRange:(_NSRange)a3;
- (void)setSelection:(id)a3;
@end

@implementation CRLWPSearchReference

+ (id)searchReferenceWithStorage:(id)a3 selection:(id)a4 searchCanvasDelegate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithStorage:v10 selection:v9 searchCanvasDelegate:v8];

  return v11;
}

+ (id)searchReferenceWithStorage:(id)a3 selection:(id)a4 selectionPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithStorage:v10 selection:v9 selectionPath:v8];

  return v11;
}

- (CRLWPSearchReference)initWithStorage:(id)a3 selection:(id)a4 searchCanvasDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CRLWPSearchReference;
  v12 = [(CRLWPSearchReference *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storage, a3);
    [(CRLWPSearchReference *)v13 setSelection:v10];
    v13->_rootIndex = 0x7FFFFFFFFFFFFFFFLL;
    v13->_pulseAnimationStyle = 0;
    if (v11)
    {
      v14 = [v11 selectionPathForSearchReference:v13];
      selectionPath = v13->_selectionPath;
      v13->_selectionPath = v14;
    }
  }

  return v13;
}

- (CRLWPSearchReference)initWithStorage:(id)a3 selectionPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CRLWPSearchReference;
  v9 = [(CRLWPSearchReference *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, a3);
    objc_storeStrong(&v10->_selectionPath, a4);
    v11 = objc_opt_class();
    v12 = [v8 mostSpecificSelectionOfClass:0];
    v13 = sub_100013F00(v11, v12);

    [(CRLWPSearchReference *)v10 setSelection:v13];
    v10->_rootIndex = 0x7FFFFFFFFFFFFFFFLL;
    v10->_pulseAnimationStyle = 0;
  }

  return v10;
}

- (CRLWPSearchReference)initWithStorage:(id)a3 selection:(id)a4 selectionPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = CRLWPSearchReference;
  v12 = [(CRLWPSearchReference *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storage, a3);
    if (v11)
    {
      v14 = [v11 orderedSelections];
      v15 = [v14 containsObject:v10];

      if ((v15 & 1) == 0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10135825C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101358284();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10135830C();
        }

        v16 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EFC0(v16);
        }

        v17 = [NSString stringWithUTF8String:"[CRLWPSearchReference initWithStorage:selection:selectionPath:]"];
        v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSearchReference.m"];
        [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:92 isFatal:0 description:"Search reference selection path must contain the text selection if selection path is provided"];
      }

      objc_storeStrong(&v13->_selectionPath, a5);
    }

    [(CRLWPSearchReference *)v13 setSelection:v10];
    v13->_rootIndex = 0x7FFFFFFFFFFFFFFFLL;
    v13->_pulseAnimationStyle = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  if (v6)
  {
    v7 = [(CRLWPSearchReference *)self storage];
    v8 = [v6 storage];
    if (v7 == v8)
    {
      v10 = [(CRLWPSearchReference *)self selection];
      v11 = [v6 selection];
      if ([v10 isEqual:v11] && (-[CRLWPSearchReference searchReferencePoint](self, "searchReferencePoint"), v13 = v12, v15 = v14, objc_msgSend(v6, "searchReferencePoint"), sub_10011ED38(v13, v15, v16, v17)))
      {
        v18 = [(CRLWPSearchReference *)self pulseAnimationStyle];
        v9 = v18 == [v6 pulseAnimationStyle];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)contains:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  v7 = [(CRLWPSearchReference *)self storage];
  v8 = [v6 storage];
  if (v7 == v8)
  {
    v10 = [(CRLWPSearchReference *)self range];
    v12 = v11;
    v13 = [v6 range];
    v9 = v10 <= v13 && &v10[v12] >= &v13[v14];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(CRLHasher);
  v4 = [(CRLWPSearchReference *)self storage];
  [(CRLHasher *)v3 addObject:v4];

  v5 = [(CRLWPSearchReference *)self selection];
  [(CRLHasher *)v3 addObject:v5];

  [(CRLHasher *)v3 addInteger:[(CRLWPSearchReference *)self pulseAnimationStyle]];
  v6 = [(CRLHasher *)v3 hashValue];

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  [v4 searchReferencePoint];
  v6 = v5;
  [(CRLWPSearchReference *)self searchReferencePoint];
  if (v6 <= v7)
  {
    if (v6 < v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = objc_opt_class();
      v10 = sub_100014370(v9, v4);
      v11 = v10;
      if (v10 && (-[CRLWPSearchReference storage](self, "storage"), (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, -[CRLWPSearchReference storage](self, "storage"), v14 = objc_claimAutoreleasedReturnValue(), [v11 storage], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v14 == v15))
      {
        v17 = [(CRLWPSearchReference *)self p_selectionForComparison];
        v18 = [v11 p_selectionForComparison];
        v19 = v18;
        v8 = 0;
        if (v17 && v18)
        {
          v8 = [v17 compare:v18];
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (void)setSelection:(id)a3
{
  v4 = a3;
  selection = self->_selection;
  if (selection != v4)
  {
    if (selection && ([(CRLWPSelection *)v4 isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101358334();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101358348();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013583D0();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLWPSearchReference setSelection:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSearchReference.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:170 isFatal:0 description:"New selection is not the same class as the old selection."];
    }

    v9 = [(CRLWPSelection *)v4 copyWithNewType:[(CRLWPSelection *)v4 type] smartFieldRange:0x7FFFFFFFFFFFFFFFLL, 0];
    v10 = self->_selection;
    if (!v10)
    {
      v10 = v4;
    }

    selectionPath = self->_selectionPath;
    v12 = v10;
    v13 = [(CRLSelectionPath *)selectionPath selectionPathReplacingMostSpecificLocationOfSelection:v12 withSelection:v9];
    v14 = self->_selectionPath;
    self->_selectionPath = v13;
    v15 = v13;

    v16 = self->_selection;
    self->_selection = v9;
    v17 = v9;
  }
}

- (_NSRange)range
{
  v2 = [(CRLWPSearchReference *)self selection];
  v3 = [v2 range];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)setRange:(_NSRange)a3
{
  v4 = [(CRLWPSearchReference *)self p_selectionWithRange:a3.location, a3.length];
  [(CRLWPSearchReference *)self setSelection:v4];
}

- (BOOL)isInsertionPoint
{
  v2 = [(CRLWPSearchReference *)self selection];
  v3 = [v2 isInsertionPoint];

  return v3;
}

- (NSString)description
{
  v3 = [(CRLWPSearchReference *)self storage];
  [(CRLWPSearchReference *)self searchReferencePoint];
  v5 = v4;
  [(CRLWPSearchReference *)self searchReferencePoint];
  v7 = v6;
  v8 = [(CRLWPSearchReference *)self selection];
  v9 = [NSString stringWithFormat:@"[CRLWPSearchReference %p] storage=%p, loc: %f, %f selection: %@", self, v3, v5, v7, v8];

  return v9;
}

- (id)searchReferenceForReplacingWithString:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  v6 = [(CRLWPSearchReference *)self range];
  v7 = [v5 length];

  v8 = [(CRLWPSearchReference *)self p_selectionWithRange:v6, v7];
  v9 = [(CRLWPSearchReference *)self selectionPath];
  v10 = [(CRLWPSearchReference *)self selection];
  v11 = [v9 selectionPathReplacingMostSpecificLocationOfSelection:v10 withSelection:v8];

  v12 = [CRLWPSearchReference searchReferenceWithStorage:self->_storage selection:v8 selectionPath:v11];
  [v12 setRootIndex:{-[CRLWPSearchReference rootIndex](self, "rootIndex")}];

  return v12;
}

- (id)searchReferenceStart
{
  v3 = [(CRLWPSearchReference *)self p_selectionWithRange:[(CRLWPSearchReference *)self range], 0];
  v4 = [(CRLWPSearchReference *)self selectionPath];
  v5 = [(CRLWPSearchReference *)self selection];
  v6 = [v4 selectionPathReplacingMostSpecificLocationOfSelection:v5 withSelection:v3];

  v7 = [CRLWPSearchReference searchReferenceWithStorage:self->_storage selection:v3 selectionPath:v6];
  [v7 setRootIndex:{-[CRLWPSearchReference rootIndex](self, "rootIndex")}];

  return v7;
}

- (id)searchReferenceEnd
{
  v3 = [(CRLWPSearchReference *)self range];
  v5 = [(CRLWPSearchReference *)self p_selectionWithRange:&v3[v4], 0];
  v6 = [(CRLWPSearchReference *)self selectionPath];
  v7 = [(CRLWPSearchReference *)self selection];
  v8 = [v6 selectionPathReplacingMostSpecificLocationOfSelection:v7 withSelection:v5];

  v9 = [CRLWPSearchReference searchReferenceWithStorage:self->_storage selection:v5 selectionPath:v8];
  [v9 setRootIndex:{-[CRLWPSearchReference rootIndex](self, "rootIndex")}];

  return v9;
}

- (id)p_selectionWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(CRLWPSearchReference *)self selection];
  v6 = objc_opt_class();

  return [v6 selectionWithRange:{location, length}];
}

- (id)commandForReplacingWithString:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CRLWPSearchReference *)self storage];
  if ([(CRLWPSearchReference *)self isReplaceable])
  {
    v8 = [v7 string];
    v9 = [(CRLWPSearchReference *)self range];
    v11 = [v6 crl_stringByCapitalizingToMatchString:v8 range:v9 searchOptions:{v10, a4}];

    v12 = objc_opt_class();
    v13 = [v7 parentInfo];
    v14 = sub_100014370(v12, v13);

    if (v14)
    {
      v15 = [_TtC8Freeform23CRLWPReplaceTextCommand alloc];
      v16 = [(CRLWPSearchReference *)self range];
      v18 = [(CRLWPReplaceTextCommand *)v15 initWithShapeItem:v14 range:v16 text:v17, v11];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v11 = v6;
  }

  return v18;
}

- (CRLSelectionPath)selectionPath
{
  selectionPath = self->_selectionPath;
  if (!selectionPath)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013583F8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135840C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101358494();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLWPSearchReference selectionPath]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSearchReference.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:274 isFatal:0 description:"Selection path must be provided on initialization for any search reference that is asked for one."];

    selectionPath = self->_selectionPath;
  }

  return selectionPath;
}

- (BOOL)isReplaceable
{
  v3 = [(CRLWPSearchReference *)self storage];
  v4 = [v3 canUserReplaceText];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CRLWPSearchReference *)self selection];

  if (!v5)
  {
    return 1;
  }

  v6 = [(CRLWPSearchReference *)self selection];
  v7 = [v6 range];
  v9 = v8;

  v10 = [(CRLWPSearchReference *)self storage];
  v11 = [v10 hasSmartFieldsInRange:{v7, v9}];

  if (!v11)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  v12 = [(CRLWPSearchReference *)self storage];
  v13 = [v12 smartFieldAtCharIndex:v7 attributeKind:6 effectiveRange:&v16];

  v14 = v13 && v16 < v7 && v17 + v16 >= v7 + v9;
  return v14;
}

- (BOOL)isSelectable
{
  v2 = [(CRLWPSearchReference *)self storage];
  v3 = [v2 parentInfo];

  if (!v3)
  {
    return 1;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 locked])
    {
      break;
    }

    v4 = [v3 parentInfo];

    v3 = v4;
    if (!v4)
    {
      v5 = 1;
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLWPSearchReference allocWithZone:a3];
  storage = self->_storage;
  v6 = [(CRLWPSearchReference *)self selection];
  v7 = [(CRLWPSearchReference *)v4 initWithStorage:storage selection:v6 selectionPath:self->_selectionPath];

  [(CRLWPSearchReference *)self searchReferencePoint];
  [(CRLWPSearchReference *)v7 setSearchReferencePoint:?];
  [(CRLWPSearchReference *)self connectionLineUnscaledPoint];
  [(CRLWPSearchReference *)v7 setConnectionLineUnscaledPoint:?];
  [(CRLWPSearchReference *)v7 setPulseAnimationStyle:[(CRLWPSearchReference *)self pulseAnimationStyle]];
  [(CRLWPSearchReference *)v7 setAutohideHighlight:[(CRLWPSearchReference *)self autohideHighlight]];
  v8 = [(CRLWPSearchReference *)self findHighlights];
  [(CRLWPSearchReference *)v7 setFindHighlights:v8];

  [(CRLWPSearchReference *)v7 setPulseHighlight:[(CRLWPSearchReference *)self pulseHighlight]];
  [(CRLWPSearchReference *)v7 setRootIndex:[(CRLWPSearchReference *)self rootIndex]];
  return v7;
}

- (id)p_selectionForComparison
{
  if (self->_selectionPath)
  {
    v2 = [(CRLWPSearchReference *)self selectionPath];
    v3 = [v2 mostSpecificSelectionOfClass:objc_opt_class()];
  }

  else
  {
    v3 = [(CRLWPSearchReference *)self selection];
  }

  return v3;
}

- (CGPoint)searchReferencePoint
{
  x = self->_searchReferencePoint.x;
  y = self->_searchReferencePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)searchReferenceLayoutFrame
{
  x = self->_searchReferenceLayoutFrame.origin.x;
  y = self->_searchReferenceLayoutFrame.origin.y;
  width = self->_searchReferenceLayoutFrame.size.width;
  height = self->_searchReferenceLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)connectionLineUnscaledPoint
{
  x = self->_connectionLineUnscaledPoint.x;
  y = self->_connectionLineUnscaledPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end