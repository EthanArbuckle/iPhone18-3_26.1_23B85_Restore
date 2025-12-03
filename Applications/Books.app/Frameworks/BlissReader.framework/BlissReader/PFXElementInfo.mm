@interface PFXElementInfo
+ (id)elementInfoForElement:(const char *)element;
+ (void)addElementInfoForName:(const char *)name isBlockLevel:(BOOL)level ignoreContainedText:(BOOL)text denotesList:(BOOL)list denotesListItem:(BOOL)item isItsOwnParagraph:(BOOL)paragraph isTableRelated:(BOOL)related hasTextAlign:(BOOL)self0;
+ (void)elementInfos;
+ (void)initialize;
@end

@implementation PFXElementInfo

+ (void)elementInfos
{
  if ((atomic_load_explicit(&qword_5679D8, memory_order_acquire) & 1) == 0)
  {
    sub_1EF0FC();
  }

  return &qword_5679E0;
}

+ (void)addElementInfoForName:(const char *)name isBlockLevel:(BOOL)level ignoreContainedText:(BOOL)text denotesList:(BOOL)list denotesListItem:(BOOL)item isItsOwnParagraph:(BOOL)paragraph isTableRelated:(BOOL)related hasTextAlign:(BOOL)self0
{
  paragraphCopy = paragraph;
  itemCopy = item;
  listCopy = list;
  textCopy = text;
  levelCopy = level;
  v17[0] = name;
  v16 = objc_alloc_init(PFXElementInfo);
  [(PFXElementInfo *)v16 setIsBlockLevel:levelCopy];
  [(PFXElementInfo *)v16 setIgnoreContainedText:textCopy];
  [(PFXElementInfo *)v16 setDenotesList:listCopy];
  [(PFXElementInfo *)v16 setDenotesListItem:itemCopy];
  [(PFXElementInfo *)v16 setIsItsOwnParagraph:paragraphCopy];
  [(PFXElementInfo *)v16 setIsTableRelated:related];
  [(PFXElementInfo *)v16 setHasTextAlign:align];
  v17[2] = v17;
  *(sub_1E8244([self elementInfos], v17) + 40) = v16;
}

+ (void)initialize
{
  LOWORD(v3) = 0;
  [self addElementInfoForName:"a" isBlockLevel:0 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v3 hasTextAlign:?];
  LOWORD(v4) = 0;
  [self addElementInfoForName:"blockquote" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v4 hasTextAlign:?];
  LOWORD(v5) = 0;
  [self addElementInfoForName:"button" isBlockLevel:0 ignoreContainedText:1 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v5 hasTextAlign:?];
  LOWORD(v6) = 0;
  [self addElementInfoForName:"body" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v6 hasTextAlign:?];
  LOWORD(v7) = 0;
  [self addElementInfoForName:"br" isBlockLevel:0 ignoreContainedText:1 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v7 hasTextAlign:?];
  LOWORD(v8) = 0;
  [self addElementInfoForName:"center" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v8 hasTextAlign:?];
  LOWORD(v9) = 0;
  [self addElementInfoForName:"col" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v9 hasTextAlign:?];
  LOWORD(v10) = 0;
  [self addElementInfoForName:"colgroup" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v10 hasTextAlign:?];
  LOWORD(v11) = 0;
  [self addElementInfoForName:"dl" isBlockLevel:1 ignoreContainedText:0 denotesList:1 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v11 hasTextAlign:?];
  LOWORD(v12) = 0;
  [self addElementInfoForName:"dt" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:1 isItsOwnParagraph:0 isTableRelated:v12 hasTextAlign:?];
  LOWORD(v13) = 0;
  [self addElementInfoForName:"dd" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:1 isItsOwnParagraph:0 isTableRelated:v13 hasTextAlign:?];
  LOWORD(v14) = 256;
  [self addElementInfoForName:"div" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v14 hasTextAlign:?];
  LOWORD(v15) = 0;
  [self addElementInfoForName:"embed" isBlockLevel:0 ignoreContainedText:1 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v15 hasTextAlign:?];
  LOWORD(v16) = 0;
  [self addElementInfoForName:"form" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v16 hasTextAlign:?];
  LOWORD(v17) = 0;
  [self addElementInfoForName:"iframe" isBlockLevel:1 ignoreContainedText:1 denotesList:0 denotesListItem:0 isItsOwnParagraph:1 isTableRelated:v17 hasTextAlign:?];
  LOWORD(v18) = 0;
  [self addElementInfoForName:"img" isBlockLevel:0 ignoreContainedText:1 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v18 hasTextAlign:?];
  LOWORD(v19) = 0;
  [self addElementInfoForName:"input" isBlockLevel:0 ignoreContainedText:1 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v19 hasTextAlign:?];
  LOWORD(v20) = 256;
  [self addElementInfoForName:"h1" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v20 hasTextAlign:?];
  LOWORD(v21) = 256;
  [self addElementInfoForName:"h2" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v21 hasTextAlign:?];
  LOWORD(v22) = 256;
  [self addElementInfoForName:"h3" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v22 hasTextAlign:?];
  LOWORD(v23) = 256;
  [self addElementInfoForName:"h4" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v23 hasTextAlign:?];
  LOWORD(v24) = 256;
  [self addElementInfoForName:"h5" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v24 hasTextAlign:?];
  LOWORD(v25) = 256;
  [self addElementInfoForName:"h6" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v25 hasTextAlign:?];
  LOWORD(v26) = 0;
  [self addElementInfoForName:"hr" isBlockLevel:0 ignoreContainedText:1 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v26 hasTextAlign:?];
  LOWORD(v27) = 0;
  [self addElementInfoForName:"noscript" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v27 hasTextAlign:?];
  LOWORD(v28) = 0;
  [self addElementInfoForName:"option" isBlockLevel:0 ignoreContainedText:1 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v28 hasTextAlign:?];
  LOWORD(v29) = 0;
  [self addElementInfoForName:"optgroup" isBlockLevel:0 ignoreContainedText:1 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v29 hasTextAlign:?];
  LOWORD(v30) = 0;
  [self addElementInfoForName:"ol" isBlockLevel:1 ignoreContainedText:0 denotesList:1 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v30 hasTextAlign:?];
  LOWORD(v31) = 0;
  [self addElementInfoForName:"li" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:1 isItsOwnParagraph:0 isTableRelated:v31 hasTextAlign:?];
  LOWORD(v32) = 0;
  [self addElementInfoForName:"object" isBlockLevel:0 ignoreContainedText:1 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v32 hasTextAlign:?];
  LOWORD(v33) = 256;
  [self addElementInfoForName:"p" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v33 hasTextAlign:?];
  LOWORD(v34) = 0;
  [self addElementInfoForName:"pre" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v34 hasTextAlign:?];
  LOWORD(v35) = 0;
  [self addElementInfoForName:"script" isBlockLevel:0 ignoreContainedText:1 denotesList:0 denotesListItem:0 isItsOwnParagraph:1 isTableRelated:v35 hasTextAlign:?];
  LOWORD(v36) = 0;
  [self addElementInfoForName:"select" isBlockLevel:0 ignoreContainedText:1 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v36 hasTextAlign:?];
  LOWORD(v37) = 1;
  [self addElementInfoForName:"table" isBlockLevel:1 ignoreContainedText:1 denotesList:0 denotesListItem:0 isItsOwnParagraph:1 isTableRelated:v37 hasTextAlign:?];
  LOWORD(v38) = 257;
  [self addElementInfoForName:"td" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v38 hasTextAlign:?];
  LOWORD(v39) = 1;
  [self addElementInfoForName:"tbody" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v39 hasTextAlign:?];
  LOWORD(v40) = 1;
  [self addElementInfoForName:"thead" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v40 hasTextAlign:?];
  LOWORD(v41) = 1;
  [self addElementInfoForName:"tfoot" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v41 hasTextAlign:?];
  LOWORD(v42) = 257;
  [self addElementInfoForName:"th" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v42 hasTextAlign:?];
  LOWORD(v43) = 257;
  [self addElementInfoForName:"tr" isBlockLevel:1 ignoreContainedText:0 denotesList:0 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v43 hasTextAlign:?];
  LOWORD(v44) = 0;
  [self addElementInfoForName:"ul" isBlockLevel:1 ignoreContainedText:0 denotesList:1 denotesListItem:0 isItsOwnParagraph:0 isTableRelated:v44 hasTextAlign:?];
}

+ (id)elementInfoForElement:(const char *)element
{
  elementCopy = element;
  elementInfos = [self elementInfos];
  v4 = sub_1EB018(elementInfos, &elementCopy);
  if (elementInfos + 8 == v4)
  {
    return 0;
  }

  else
  {
    return *(v4 + 40);
  }
}

@end