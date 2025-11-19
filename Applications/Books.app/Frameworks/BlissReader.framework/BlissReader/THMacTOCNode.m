@interface THMacTOCNode
+ (id)nodeForPageIndex:(int64_t)a3 inNode:(id)a4 excludeHeadings:(BOOL)a5;
+ (id)nodeTreeWithDocumentRoot:(id)a3 navigator:(id)a4 hasPaginatedData:(BOOL)a5;
+ (id)pageNodeForPageIndex:(int64_t)a3 inNode:(id)a4;
- (CGImage)image;
- (NSString)displayPageNumber;
- (THMacTOCNode)init;
- (id)rootNodeFilteringOutFirstLevelNodesOfType:(int)a3;
- (int64_t)absolutePageIndex;
- (unint64_t)nodeLevel;
- (void)addChild:(id)a3;
- (void)addPage:(id)a3;
- (void)dealloc;
- (void)invalidatePaginationData;
- (void)p_invaliatePaginationData;
@end

@implementation THMacTOCNode

+ (id)nodeTreeWithDocumentRoot:(id)a3 navigator:(id)a4 hasPaginatedData:(BOOL)a5
{
  v5 = a5;
  v7 = objc_alloc_init(THMacTOCNode);
  [(THMacTOCNode *)v7 setNodeType:1];
  if (v5)
  {
    v8 = objc_alloc_init(THMacTOCNode);
    [(THMacTOCNode *)v8 setNodeType:8];
    -[THMacTOCNode setTitle:](v8, "setTitle:", [THBundle() localizedStringForKey:@"Thumbnails" value:&stru_471858 table:0]);
    [(THMacTOCNode *)v8 setAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
    [(THMacTOCNode *)v8 setDisplayPageNumber:&stru_471858];
    [(THMacTOCNode *)v7 addChild:v8];
  }

  v9 = [a3 properties];
  if ([v9 introMediaUrl])
  {
    v10 = objc_alloc_init(THMacTOCNode);
    [(THMacTOCNode *)v10 setNodeType:2];
    -[THMacTOCNode setTitle:](v10, "setTitle:", [THBundle() localizedStringForKey:@"Intro Image" value:&stru_471858 table:0]);
    [(THMacTOCNode *)v10 setAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
    [(THMacTOCNode *)v10 setDisplayPageNumber:&stru_471858];
    if ([v9 introMediaIsVideo])
    {
      -[THMacTOCNode setTitle:](v10, "setTitle:", [THBundle() localizedStringForKey:@"Intro Movie" value:&stru_471858 table:0]);
      v11 = +[AVAsset assetWithURL:](AVAsset, "assetWithURL:", [v9 introMediaUrl]);
      if (v11)
      {
        [(AVAsset *)v11 duration];
        Seconds = CMTimeGetSeconds(&time);
        v13 = floor(Seconds / 60.0);
        v14 = Seconds - v13 * 60.0;
        v15 = floor(v13 / 60.0);
        v16 = v13 - v15 * 60.0;
        v17 = THBundle();
        if (v15 <= 0.0)
        {
          v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v17 localizedStringForKey:@"%1$2d:%2$02d" value:&stru_471858 table:0], v16, v14, v47);
        }

        else
        {
          v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v17 localizedStringForKey:@"%1$2d:%2$02d:%3$02d" value:&stru_471858 table:0], v15, v16, v14);
        }

        [(THMacTOCNode *)v10 setDisplayPageNumber:v18];
      }
    }

    [(THMacTOCNode *)v7 addChild:v10];
  }

  v19 = [a3 tocModel];
  v20 = 0;
  if ([objc_msgSend(v19 "tiles")])
  {
    v21 = 0;
    v54 = v7;
    v49 = v5;
    v52 = a4;
    v48 = v19;
    do
    {
      v51 = v21;
      v22 = [objc_msgSend(v19 "tiles")];
      v23 = [v22 browserPageNode];
      v24 = objc_alloc_init(THMacTOCNode);
      [(THMacTOCNode *)v24 setNodeType:16];
      -[THMacTOCNode setChapterTOCPageInfo:](v24, "setChapterTOCPageInfo:", [v23 pageAtRelativeIndex:0 forPresentationType:{objc_msgSend(objc_msgSend(a3, "properties"), "chapterBrowserPagePresentationType")}]);
      -[THMacTOCNode setTitle:](v24, "setTitle:", [objc_msgSend(v22 "frontTitleText")]);
      [(THMacTOCNode *)v24 setNavigator:a4];
      -[THMacTOCNode setLink:](v24, "setLink:", [v22 firstModelLink]);
      if (v5)
      {
        v25 = v20;
      }

      else
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      [(THMacTOCNode *)v24 setAbsolutePageIndex:v25];
      if (v5)
      {
        -[THMacTOCNode setImageData:](v24, "setImageData:", [objc_msgSend(v22 "largerThumbs")]);
      }

      if ([objc_msgSend(v22 "portraitEntries")])
      {
        v26 = 0;
        v27 = 0;
        do
        {
          v28 = [objc_msgSend(v22 "portraitEntries")];
          if (![v28 indentLevel])
          {
            if (v5)
            {
              -[THMacTOCNode setNodeNumberString:](v24, "setNodeNumberString:", [v28 sectionIdentifier]);
              -[THMacTOCNode setDisplayPageNumber:](v24, "setDisplayPageNumber:", [v28 displayPageNumber]);
              -[THMacTOCNode setDisplayPageNumberValue:](v24, "setDisplayPageNumberValue:", [v28 displayPageNumberValue]);
            }

            -[THMacTOCNode setDisplayPageNumberFormat:](v24, "setDisplayPageNumberFormat:", [v28 displayPageNumberFormat]);
            -[THMacTOCNode setLink:](v24, "setLink:", [v28 modelLink]);
          }

          if ([v28 indentLevel] == &dword_0 + 1 && objc_msgSend(v28, "includeInTOC"))
          {
            v27 = objc_alloc_init(THMacTOCNode);
            if ([v28 pageIndex] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v29 = 128;
            }

            else
            {
              v29 = 32;
            }

            [(THMacTOCNode *)v27 setNodeType:v29];
            [(THMacTOCNode *)v27 setNavigator:a4];
            -[THMacTOCNode setTitle:](v27, "setTitle:", [objc_msgSend(v28 "title")]);
            if (v5)
            {
              -[THMacTOCNode setNodeNumberString:](v27, "setNodeNumberString:", [v28 sectionIdentifier]);
              -[THMacTOCNode setDisplayPageNumber:](v27, "setDisplayPageNumber:", [v28 displayPageNumber]);
              -[THMacTOCNode setDisplayPageNumberValue:](v27, "setDisplayPageNumberValue:", [v28 displayPageNumberValue]);
              -[THMacTOCNode setDisplayPageNumberFormat:](v27, "setDisplayPageNumberFormat:", [v28 displayPageNumberFormat]);
              v30 = [v28 pageIndex];
            }

            else
            {
              -[THMacTOCNode setDisplayPageNumberFormat:](v27, "setDisplayPageNumberFormat:", [v28 displayPageNumberFormat]);
              v30 = 0x7FFFFFFFFFFFFFFFLL;
            }

            [(THMacTOCNode *)v27 setAbsolutePageIndex:v30];
            -[THMacTOCNode setLink:](v27, "setLink:", [v28 modelLink]);
            if ([v28 pageIndex] != 0x7FFFFFFFFFFFFFFFLL && v5)
            {
              v31 = [v22 largerThumbs];
              v32 = [v28 pageIndex];
              v33 = v32 - [(THMacTOCNode *)v24 absolutePageIndex];
              a4 = v52;
              -[THMacTOCNode setImageData:](v27, "setImageData:", [v31 objectAtIndex:v33]);
            }

            [(THMacTOCNode *)v24 addChild:v27];
          }

          if ([v28 indentLevel] == &dword_0 + 2 && objc_msgSend(v28, "includeInTOC"))
          {
            v34 = objc_alloc_init(THMacTOCNode);
            [(THMacTOCNode *)v34 setNodeType:128];
            [(THMacTOCNode *)v34 setNavigator:a4];
            -[THMacTOCNode setTitle:](v34, "setTitle:", [objc_msgSend(v28 "title")]);
            if (v5)
            {
              -[THMacTOCNode setNodeNumberString:](v34, "setNodeNumberString:", [v28 sectionIdentifier]);
              -[THMacTOCNode setDisplayPageNumber:](v34, "setDisplayPageNumber:", [v28 displayPageNumber]);
              -[THMacTOCNode setDisplayPageNumberValue:](v34, "setDisplayPageNumberValue:", [v28 displayPageNumberValue]);
            }

            -[THMacTOCNode setDisplayPageNumberFormat:](v34, "setDisplayPageNumberFormat:", [v28 displayPageNumberFormat]);
            [(THMacTOCNode *)v34 setAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
            -[THMacTOCNode setLink:](v34, "setLink:", [v28 modelLink]);
            [(THMacTOCNode *)v27 addChild:v34];
          }

          ++v26;
        }

        while (v26 < [objc_msgSend(v22 "portraitEntries")]);
      }

      [(THMacTOCNode *)v7 addChild:v24];
      if (v5)
      {
        ++v20;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v35 = [v22 largerThumbs];
        v36 = [v35 countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v56;
          v39 = 1;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v56 != v38)
              {
                objc_enumerationMutation(v35);
              }

              if ((v39 & 1) == 0)
              {
                v41 = *(*(&v55 + 1) + 8 * i);
                v42 = [a1 nodeForPageIndex:v20 inNode:v54 excludeHeadings:1];
                v43 = objc_alloc_init(THMacTOCNode);
                [(THMacTOCNode *)v43 setNodeType:64];
                -[THMacTOCNode setDisplayPageNumberValue:](v43, "setDisplayPageNumberValue:", [v42 displayPageNumberValue] + v20 - objc_msgSend(v42, "absolutePageIndex"));
                -[THMacTOCNode setDisplayPageNumberFormat:](v43, "setDisplayPageNumberFormat:", [v42 displayPageNumberFormat]);
                [(THMacTOCNode *)v43 setDisplayPageNumber:[NSString stringForValue:[(THMacTOCNode *)v43 displayPageNumberValue] withListNumberFormat:[(THMacTOCNode *)v43 displayPageNumberFormat] includeFormatting:0]];
                [(THMacTOCNode *)v43 setAbsolutePageIndex:v20];
                [(THMacTOCNode *)v43 setImageData:v41];
                [(THMacTOCNode *)v24 addPage:v43];

                ++v20;
              }

              v39 = 0;
            }

            v37 = [v35 countByEnumeratingWithState:&v55 objects:v60 count:16];
            v39 = 0;
          }

          while (v37);
        }
      }

      v21 = v51 + 1;
      v19 = v48;
      v7 = v54;
      v5 = v49;
      a4 = v52;
    }

    while (v51 + 1 < [objc_msgSend(v48 "tiles")]);
  }

  if (v5)
  {
    v44 = v20;
  }

  else
  {
    v44 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(THMacTOCNode *)v7 setAbsolutePageIndex:v44];
  if ([objc_msgSend(a3 "glossary")])
  {
    v45 = objc_alloc_init(THMacTOCNode);
    [(THMacTOCNode *)v45 setNodeType:4];
    -[THMacTOCNode setTitle:](v45, "setTitle:", [THBundle() localizedStringForKey:@"Glossary" value:&stru_471858 table:0]);
    [(THMacTOCNode *)v45 setAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
    [(THMacTOCNode *)v45 setDisplayPageNumber:&stru_471858];
    [(THMacTOCNode *)v7 addChild:v45];
  }

  return v7;
}

+ (id)nodeForPageIndex:(int64_t)a3 inNode:(id)a4 excludeHeadings:(BOOL)a5
{
  v5 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [a4 children];
  result = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (result)
  {
    v10 = result;
    v11 = 0;
    v12 = *v18;
    while (2)
    {
      v13 = 0;
      do
      {
        v14 = v11;
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v17 + 1) + 8 * v13);
        if (v5 && [*(*(&v17 + 1) + 8 * v13) nodeType] == 128 || (v15 = objc_msgSend(v11, "absolutePageIndex"), v15 == 0x7FFFFFFFFFFFFFFFLL))
        {
          v11 = v14;
        }

        else if (v15 >= a3)
        {
          if (v15 == a3)
          {
            result = v11;
          }

          else
          {
            result = 0;
          }

          goto LABEL_17;
        }

        v13 = v13 + 1;
      }

      while (v10 != v13);
      result = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v10 = result;
      if (result)
      {
        continue;
      }

      break;
    }

    v14 = v11;
LABEL_17:
    if (result)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14 == 0;
    }

    if (!v16)
    {
      if ([v14 absolutePageIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
        result = 0;
      }

      else
      {
        result = [a1 nodeForPageIndex:a3 inNode:v14 excludeHeadings:v5];
      }

      if (!result)
      {
        return v14;
      }
    }
  }

  return result;
}

+ (id)pageNodeForPageIndex:(int64_t)a3 inNode:(id)a4
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a4 children];
  result = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = *v15;
LABEL_3:
  v10 = 0;
  while (1)
  {
    v11 = v8;
    if (*v15 != v9)
    {
      objc_enumerationMutation(v5);
    }

    v8 = *(*(&v14 + 1) + 8 * v10);
    if ([v8 nodeType] != 128 && objc_msgSend(v8, "nodeType") != 32)
    {
      v12 = [v8 absolutePageIndex];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    v8 = v11;
LABEL_10:
    if (v7 == ++v10)
    {
      result = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v7 = result;
      if (result)
      {
        goto LABEL_3;
      }

      v11 = v8;
      goto LABEL_20;
    }
  }

  if (v12 < a3)
  {
    goto LABEL_10;
  }

  if (v12 == a3)
  {
    result = v8;
  }

  else
  {
    result = 0;
  }

  if (!result)
  {
LABEL_20:
    if (v11)
    {
      v13 = ~[v11 absolutePageIndex] + a3;
      if (v13 >= [objc_msgSend(v11 "pages")])
      {
        return 0;
      }

      else
      {
        return [objc_msgSend(v11 "pages")];
      }
    }
  }

  return result;
}

- (void)invalidatePaginationData
{
  [(THMacTOCNode *)self p_invaliatePaginationData];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(THMacTOCNode *)self children];
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) invalidatePaginationData];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)p_invaliatePaginationData
{
  if ([(THMacTOCNode *)self nodeType]== 16 || [(THMacTOCNode *)self nodeType]== 128 || [(THMacTOCNode *)self nodeType]== 32)
  {
    self->_absolutePageIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->_displayPageNumberValue = 0x7FFFFFFFFFFFFFFFLL;

    self->_displayPageNumber = 0;
  }
}

- (THMacTOCNode)init
{
  v3.receiver = self;
  v3.super_class = THMacTOCNode;
  result = [(THMacTOCNode *)&v3 init];
  if (result)
  {
    result->_displayPageNumberValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = THMacTOCNode;
  [(THMacTOCNode *)&v3 dealloc];
}

- (id)rootNodeFilteringOutFirstLevelNodesOfType:(int)a3
{
  v5 = objc_alloc_init(THMacTOCNode);
  [(THMacTOCNode *)v5 setNodeType:[(THMacTOCNode *)self nodeType]];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(THMacTOCNode *)self children];
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = ~a3;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v12 nodeType] & v10) != 0)
        {
          [(THMacTOCNode *)v5 addChild:v12];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)addChild:(id)a3
{
  if (![(THMacTOCNode *)self children])
  {
    [(THMacTOCNode *)self setChildren:+[NSMutableArray array]];
  }

  v5 = [(THMacTOCNode *)self children];

  [(NSMutableArray *)v5 addObject:a3];
}

- (void)addPage:(id)a3
{
  if (![(THMacTOCNode *)self pages])
  {
    [(THMacTOCNode *)self setPages:+[NSMutableArray array]];
  }

  v5 = [(THMacTOCNode *)self pages];

  [(NSMutableArray *)v5 addObject:a3];
}

- (CGImage)image
{
  if (!self->_image && [(THMacTOCNode *)self imageData])
  {
    v3 = [TSDBitmapImageProvider CGImageForImageData:[(THMacTOCNode *)self imageData]];
    self->_image = v3;
    CGImageRetain(v3);
    [(THMacTOCNode *)self setImageData:0];
  }

  return self->_image;
}

- (unint64_t)nodeLevel
{
  v2 = [(THMacTOCNode *)self nodeType];
  if (v2 == 32)
  {
    return 1;
  }

  else
  {
    return 2 * (v2 == 128);
  }
}

- (int64_t)absolutePageIndex
{
  if (self->_absolutePageIndex == 0x7FFFFFFFFFFFFFFFLL && [(THMacTOCNode *)self navigator]&& [(THMacTOCNode *)self link])
  {
    self->_absolutePageIndex = [(THDocumentNavigator *)[(THMacTOCNode *)self navigator] absolutePageIndexForLink:[(THMacTOCNode *)self link]];
  }

  return self->_absolutePageIndex;
}

- (NSString)displayPageNumber
{
  result = self->_displayPageNumber;
  if (!result)
  {
    if (self->_displayPageNumberValue == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(THMacTOCNode *)self navigator]&& [(THMacTOCNode *)self link])
      {
        if (![(THDocumentRoot *)[(THDocumentNavigator *)[(THMacTOCNode *)self navigator] documentRoot] reflowablePaginationController]|| [(THReflowablePaginationController *)[(THDocumentRoot *)[(THDocumentNavigator *)[(THMacTOCNode *)self navigator] documentRoot] reflowablePaginationController] paginationComplete])
        {
          v4 = [(THDocumentNavigator *)[(THMacTOCNode *)self navigator] pageNumberStringForLink:[(THMacTOCNode *)self link]];
LABEL_12:
          result = v4;
          goto LABEL_13;
        }
      }

      else if ([(THMacTOCNode *)self absolutePageIndex]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = [NSString stringWithFormat:@"%ld", [(THMacTOCNode *)self absolutePageIndex]+ 1];
        goto LABEL_12;
      }

      result = [THBundle() localizedStringForKey:@"-" value:&stru_471858 table:0];
LABEL_13:
      self->_displayPageNumber = result;
      return result;
    }

    v4 = [NSString stringForValue:[(THMacTOCNode *)self displayPageNumberValue] withListNumberFormat:[(THMacTOCNode *)self displayPageNumberFormat] includeFormatting:0];
    goto LABEL_12;
  }

  return result;
}

@end