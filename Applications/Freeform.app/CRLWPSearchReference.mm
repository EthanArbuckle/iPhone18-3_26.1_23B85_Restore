@interface CRLWPSearchReference
+ (id)searchReferenceWithStorage:(id)storage selection:(id)selection searchCanvasDelegate:(id)delegate;
+ (id)searchReferenceWithStorage:(id)storage selection:(id)selection selectionPath:(id)path;
- (BOOL)contains:(id)contains;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInsertionPoint;
- (BOOL)isReplaceable;
- (BOOL)isSelectable;
- (CGPoint)connectionLineUnscaledPoint;
- (CGPoint)searchReferencePoint;
- (CGRect)searchReferenceLayoutFrame;
- (CRLSelectionPath)selectionPath;
- (CRLWPSearchReference)initWithStorage:(id)storage selection:(id)selection searchCanvasDelegate:(id)delegate;
- (CRLWPSearchReference)initWithStorage:(id)storage selection:(id)selection selectionPath:(id)path;
- (CRLWPSearchReference)initWithStorage:(id)storage selectionPath:(id)path;
- (NSString)description;
- (_NSRange)range;
- (id)commandForReplacingWithString:(id)string options:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)p_selectionForComparison;
- (id)p_selectionWithRange:(_NSRange)range;
- (id)searchReferenceEnd;
- (id)searchReferenceForReplacingWithString:(id)string options:(unint64_t)options;
- (id)searchReferenceStart;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)setRange:(_NSRange)range;
- (void)setSelection:(id)selection;
@end

@implementation CRLWPSearchReference

+ (id)searchReferenceWithStorage:(id)storage selection:(id)selection searchCanvasDelegate:(id)delegate
{
  delegateCopy = delegate;
  selectionCopy = selection;
  storageCopy = storage;
  v11 = [[self alloc] initWithStorage:storageCopy selection:selectionCopy searchCanvasDelegate:delegateCopy];

  return v11;
}

+ (id)searchReferenceWithStorage:(id)storage selection:(id)selection selectionPath:(id)path
{
  pathCopy = path;
  selectionCopy = selection;
  storageCopy = storage;
  v11 = [[self alloc] initWithStorage:storageCopy selection:selectionCopy selectionPath:pathCopy];

  return v11;
}

- (CRLWPSearchReference)initWithStorage:(id)storage selection:(id)selection searchCanvasDelegate:(id)delegate
{
  storageCopy = storage;
  selectionCopy = selection;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = CRLWPSearchReference;
  v12 = [(CRLWPSearchReference *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storage, storage);
    [(CRLWPSearchReference *)v13 setSelection:selectionCopy];
    v13->_rootIndex = 0x7FFFFFFFFFFFFFFFLL;
    v13->_pulseAnimationStyle = 0;
    if (delegateCopy)
    {
      v14 = [delegateCopy selectionPathForSearchReference:v13];
      selectionPath = v13->_selectionPath;
      v13->_selectionPath = v14;
    }
  }

  return v13;
}

- (CRLWPSearchReference)initWithStorage:(id)storage selectionPath:(id)path
{
  storageCopy = storage;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = CRLWPSearchReference;
  v9 = [(CRLWPSearchReference *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, storage);
    objc_storeStrong(&v10->_selectionPath, path);
    v11 = objc_opt_class();
    v12 = [pathCopy mostSpecificSelectionOfClass:0];
    v13 = sub_100013F00(v11, v12);

    [(CRLWPSearchReference *)v10 setSelection:v13];
    v10->_rootIndex = 0x7FFFFFFFFFFFFFFFLL;
    v10->_pulseAnimationStyle = 0;
  }

  return v10;
}

- (CRLWPSearchReference)initWithStorage:(id)storage selection:(id)selection selectionPath:(id)path
{
  storageCopy = storage;
  selectionCopy = selection;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = CRLWPSearchReference;
  v12 = [(CRLWPSearchReference *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storage, storage);
    if (pathCopy)
    {
      orderedSelections = [pathCopy orderedSelections];
      v15 = [orderedSelections containsObject:selectionCopy];

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

      objc_storeStrong(&v13->_selectionPath, path);
    }

    [(CRLWPSearchReference *)v13 setSelection:selectionCopy];
    v13->_rootIndex = 0x7FFFFFFFFFFFFFFFLL;
    v13->_pulseAnimationStyle = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6)
  {
    storage = [(CRLWPSearchReference *)self storage];
    storage2 = [v6 storage];
    if (storage == storage2)
    {
      selection = [(CRLWPSearchReference *)self selection];
      selection2 = [v6 selection];
      if ([selection isEqual:selection2] && (-[CRLWPSearchReference searchReferencePoint](self, "searchReferencePoint"), v13 = v12, v15 = v14, objc_msgSend(v6, "searchReferencePoint"), sub_10011ED38(v13, v15, v16, v17)))
      {
        pulseAnimationStyle = [(CRLWPSearchReference *)self pulseAnimationStyle];
        v9 = pulseAnimationStyle == [v6 pulseAnimationStyle];
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

- (BOOL)contains:(id)contains
{
  containsCopy = contains;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, containsCopy);

  storage = [(CRLWPSearchReference *)self storage];
  storage2 = [v6 storage];
  if (storage == storage2)
  {
    range = [(CRLWPSearchReference *)self range];
    v12 = v11;
    range2 = [v6 range];
    v9 = range <= range2 && &range[v12] >= &range2[v14];
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
  storage = [(CRLWPSearchReference *)self storage];
  [(CRLHasher *)v3 addObject:storage];

  selection = [(CRLWPSearchReference *)self selection];
  [(CRLHasher *)v3 addObject:selection];

  [(CRLHasher *)v3 addInteger:[(CRLWPSearchReference *)self pulseAnimationStyle]];
  hashValue = [(CRLHasher *)v3 hashValue];

  return hashValue;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  [compareCopy searchReferencePoint];
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
      v10 = sub_100014370(v9, compareCopy);
      v11 = v10;
      if (v10 && (-[CRLWPSearchReference storage](self, "storage"), (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, -[CRLWPSearchReference storage](self, "storage"), v14 = objc_claimAutoreleasedReturnValue(), [v11 storage], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v14 == v15))
      {
        p_selectionForComparison = [(CRLWPSearchReference *)self p_selectionForComparison];
        p_selectionForComparison2 = [v11 p_selectionForComparison];
        v19 = p_selectionForComparison2;
        v8 = 0;
        if (p_selectionForComparison && p_selectionForComparison2)
        {
          v8 = [p_selectionForComparison compare:p_selectionForComparison2];
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

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  selection = self->_selection;
  if (selection != selectionCopy)
  {
    if (selection && ([(CRLWPSelection *)selectionCopy isMemberOfClass:objc_opt_class()]& 1) == 0)
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

    v9 = [(CRLWPSelection *)selectionCopy copyWithNewType:[(CRLWPSelection *)selectionCopy type] smartFieldRange:0x7FFFFFFFFFFFFFFFLL, 0];
    v10 = self->_selection;
    if (!v10)
    {
      v10 = selectionCopy;
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
  selection = [(CRLWPSearchReference *)self selection];
  range = [selection range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)setRange:(_NSRange)range
{
  v4 = [(CRLWPSearchReference *)self p_selectionWithRange:range.location, range.length];
  [(CRLWPSearchReference *)self setSelection:v4];
}

- (BOOL)isInsertionPoint
{
  selection = [(CRLWPSearchReference *)self selection];
  isInsertionPoint = [selection isInsertionPoint];

  return isInsertionPoint;
}

- (NSString)description
{
  storage = [(CRLWPSearchReference *)self storage];
  [(CRLWPSearchReference *)self searchReferencePoint];
  v5 = v4;
  [(CRLWPSearchReference *)self searchReferencePoint];
  v7 = v6;
  selection = [(CRLWPSearchReference *)self selection];
  v9 = [NSString stringWithFormat:@"[CRLWPSearchReference %p] storage=%p, loc: %f, %f selection: %@", self, storage, v5, v7, selection];

  return v9;
}

- (id)searchReferenceForReplacingWithString:(id)string options:(unint64_t)options
{
  stringCopy = string;
  range = [(CRLWPSearchReference *)self range];
  v7 = [stringCopy length];

  v8 = [(CRLWPSearchReference *)self p_selectionWithRange:range, v7];
  selectionPath = [(CRLWPSearchReference *)self selectionPath];
  selection = [(CRLWPSearchReference *)self selection];
  v11 = [selectionPath selectionPathReplacingMostSpecificLocationOfSelection:selection withSelection:v8];

  v12 = [CRLWPSearchReference searchReferenceWithStorage:self->_storage selection:v8 selectionPath:v11];
  [v12 setRootIndex:{-[CRLWPSearchReference rootIndex](self, "rootIndex")}];

  return v12;
}

- (id)searchReferenceStart
{
  v3 = [(CRLWPSearchReference *)self p_selectionWithRange:[(CRLWPSearchReference *)self range], 0];
  selectionPath = [(CRLWPSearchReference *)self selectionPath];
  selection = [(CRLWPSearchReference *)self selection];
  v6 = [selectionPath selectionPathReplacingMostSpecificLocationOfSelection:selection withSelection:v3];

  v7 = [CRLWPSearchReference searchReferenceWithStorage:self->_storage selection:v3 selectionPath:v6];
  [v7 setRootIndex:{-[CRLWPSearchReference rootIndex](self, "rootIndex")}];

  return v7;
}

- (id)searchReferenceEnd
{
  range = [(CRLWPSearchReference *)self range];
  v5 = [(CRLWPSearchReference *)self p_selectionWithRange:&range[v4], 0];
  selectionPath = [(CRLWPSearchReference *)self selectionPath];
  selection = [(CRLWPSearchReference *)self selection];
  v8 = [selectionPath selectionPathReplacingMostSpecificLocationOfSelection:selection withSelection:v5];

  v9 = [CRLWPSearchReference searchReferenceWithStorage:self->_storage selection:v5 selectionPath:v8];
  [v9 setRootIndex:{-[CRLWPSearchReference rootIndex](self, "rootIndex")}];

  return v9;
}

- (id)p_selectionWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selection = [(CRLWPSearchReference *)self selection];
  v6 = objc_opt_class();

  return [v6 selectionWithRange:{location, length}];
}

- (id)commandForReplacingWithString:(id)string options:(unint64_t)options
{
  stringCopy = string;
  storage = [(CRLWPSearchReference *)self storage];
  if ([(CRLWPSearchReference *)self isReplaceable])
  {
    string = [storage string];
    range = [(CRLWPSearchReference *)self range];
    v11 = [stringCopy crl_stringByCapitalizingToMatchString:string range:range searchOptions:{v10, options}];

    v12 = objc_opt_class();
    parentInfo = [storage parentInfo];
    v14 = sub_100014370(v12, parentInfo);

    if (v14)
    {
      v15 = [_TtC8Freeform23CRLWPReplaceTextCommand alloc];
      range2 = [(CRLWPSearchReference *)self range];
      v18 = [(CRLWPReplaceTextCommand *)v15 initWithShapeItem:v14 range:range2 text:v17, v11];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v11 = stringCopy;
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
  storage = [(CRLWPSearchReference *)self storage];
  canUserReplaceText = [storage canUserReplaceText];

  if (!canUserReplaceText)
  {
    return 0;
  }

  selection = [(CRLWPSearchReference *)self selection];

  if (!selection)
  {
    return 1;
  }

  selection2 = [(CRLWPSearchReference *)self selection];
  range = [selection2 range];
  v9 = v8;

  storage2 = [(CRLWPSearchReference *)self storage];
  v11 = [storage2 hasSmartFieldsInRange:{range, v9}];

  if (!v11)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  storage3 = [(CRLWPSearchReference *)self storage];
  v13 = [storage3 smartFieldAtCharIndex:range attributeKind:6 effectiveRange:&v16];

  v14 = v13 && v16 < range && v17 + v16 >= range + v9;
  return v14;
}

- (BOOL)isSelectable
{
  storage = [(CRLWPSearchReference *)self storage];
  parentInfo = [storage parentInfo];

  if (!parentInfo)
  {
    return 1;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([parentInfo locked])
    {
      break;
    }

    v3ParentInfo = [parentInfo parentInfo];

    parentInfo = v3ParentInfo;
    if (!v3ParentInfo)
    {
      v5 = 1;
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLWPSearchReference allocWithZone:zone];
  storage = self->_storage;
  selection = [(CRLWPSearchReference *)self selection];
  v7 = [(CRLWPSearchReference *)v4 initWithStorage:storage selection:selection selectionPath:self->_selectionPath];

  [(CRLWPSearchReference *)self searchReferencePoint];
  [(CRLWPSearchReference *)v7 setSearchReferencePoint:?];
  [(CRLWPSearchReference *)self connectionLineUnscaledPoint];
  [(CRLWPSearchReference *)v7 setConnectionLineUnscaledPoint:?];
  [(CRLWPSearchReference *)v7 setPulseAnimationStyle:[(CRLWPSearchReference *)self pulseAnimationStyle]];
  [(CRLWPSearchReference *)v7 setAutohideHighlight:[(CRLWPSearchReference *)self autohideHighlight]];
  findHighlights = [(CRLWPSearchReference *)self findHighlights];
  [(CRLWPSearchReference *)v7 setFindHighlights:findHighlights];

  [(CRLWPSearchReference *)v7 setPulseHighlight:[(CRLWPSearchReference *)self pulseHighlight]];
  [(CRLWPSearchReference *)v7 setRootIndex:[(CRLWPSearchReference *)self rootIndex]];
  return v7;
}

- (id)p_selectionForComparison
{
  if (self->_selectionPath)
  {
    selectionPath = [(CRLWPSearchReference *)self selectionPath];
    selection = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];
  }

  else
  {
    selection = [(CRLWPSearchReference *)self selection];
  }

  return selection;
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