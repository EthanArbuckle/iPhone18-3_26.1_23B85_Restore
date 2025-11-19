@interface PFXStreamReader
+ (BOOL)readWithElementReaders:(id)a3 textReader:(Class)a4 piReader:(Class)a5 readerState:(id)a6;
+ (BOOL)skipSubtreeWithStream:(_xmlTextReader *)a3 endNodeType:(int64_t)a4 readerState:(id)a5;
@end

@implementation PFXStreamReader

+ (BOOL)readWithElementReaders:(id)a3 textReader:(Class)a4 piReader:(Class)a5 readerState:(id)a6
{
  v11 = [a6 streamAPI];
  if (!v11)
  {
    LOBYTE(v37) = 0;
    return v37;
  }

  v12 = v11;
  __src = 0;
  v40 = 0;
  v41 = 0;
  while (1)
  {
    v13 = xmlTextReaderRead(v12);
    if (v13 != 1)
    {
      break;
    }

    v14 = xmlTextReaderDepth(v12);
    v15 = xmlTextReaderNodeType(v12);
    if (v15 > 6)
    {
      if ((v15 - 13) >= 2)
      {
        if (v15 == 7)
        {
          if (a5)
          {
            [(objc_class *)a5 readProcessingInstructionFromStream:v12 readerState:a6];
          }
        }

        else if (v15 == 15)
        {
          [objc_msgSend(objc_msgSend(a6 "currentXmlStackEntry")];
          [a6 popReader];
          v40 -= 8;
        }

        goto LABEL_51;
      }

LABEL_13:
      if (a4)
      {
        if (v14 < 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = *(v40 - 1);
          if ((v17 & 1) == 0)
          {
            v17 |= 1uLL;
            *(v40 - 1) = v17;
          }
        }

        [(objc_class *)a4 readTextFromStream:v12 childIndex:v17 readerState:a6];
        if ([a6 shouldCountText])
        {
          v20 = xmlTextReaderConstValue(v12);
          [a6 incrementTextReadBy:xmlStrlen(v20)];
        }
      }

      goto LABEL_51;
    }

    switch(v15)
    {
      case 1:
        v18 = v40;
        if (v40 >= v41)
        {
          v21 = __src;
          v22 = v40 - __src;
          v23 = (v40 - __src) >> 3;
          v24 = v23 + 1;
          if ((v23 + 1) >> 61)
          {
            sub_3A53C();
          }

          v25 = v41 - __src;
          if ((v41 - __src) >> 2 > v24)
          {
            v24 = v25 >> 2;
          }

          v26 = v25 >= 0x7FFFFFFFFFFFFFF8;
          v27 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v26)
          {
            v27 = v24;
          }

          if (v27)
          {
            sub_40BB8(&__src, v27);
          }

          *(8 * v23) = 0;
          v19 = 8 * v23 + 8;
          memcpy(0, v21, v22);
          v28 = __src;
          __src = 0;
          v40 = v19;
          v41 = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v40 = 0;
          v19 = (v18 + 8);
        }

        v29 = v14;
        v40 = v19;
        if (v14 >= 1)
        {
          v30 = __src + 8 * v14;
          v31 = *(v30 - 1);
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = 2;
          }

          *(v30 - 1) = v31 + v32;
        }

        v33 = "";
        if ([a6 namespaceCheck])
        {
          v33 = xmlTextReaderConstNamespaceUri(v12);
        }

        v34 = [a3 elementInfoForElementName:xmlTextReaderConstLocalName(v12) elementNamespace:v33];
        v35 = [v34 mappingClass];
        if (!v35)
        {
          v16 = [a1 skipSubtreeWithStream:v12 endNodeType:15 readerState:a6];
          v40 -= 8;
LABEL_45:
          if ((v16 & 1) == 0)
          {
            goto LABEL_57;
          }

          break;
        }

        v36 = objc_alloc_init(v35);
        [a6 pushReader:v36 elementInfo:v34 cfiPath:{+[PFXCommon cfiPathToNodeWithDepth:nodeArray:idArray:](PFXCommon, "cfiPathToNodeWithDepth:nodeArray:idArray:", v29, &__src, 0)}];
        if ([v36 mapStartElementWithState:a6])
        {
          if (xmlTextReaderIsEmptyElement(v12))
          {
            [objc_msgSend(objc_msgSend(a6 "currentXmlStackEntry")];
            [a6 popReader];
            goto LABEL_49;
          }
        }

        else
        {
          if (([a1 skipSubtreeWithStream:v12 endNodeType:15 readerState:a6] & 1) == 0)
          {

            goto LABEL_57;
          }

          [a6 popReader];
LABEL_49:
          v40 -= 8;
        }

        break;
      case 3:
        goto LABEL_13;
      case 6:
        v16 = [a1 skipSubtreeWithStream:v12 endNodeType:16 readerState:a6];
        goto LABEL_45;
    }

LABEL_51:
    if ([a6 isCancelled])
    {
      goto LABEL_55;
    }
  }

  if ((v13 & 0x80000000) == 0)
  {
LABEL_55:
    v37 = [a6 isCancelled] ^ 1;
    goto LABEL_58;
  }

LABEL_57:
  LOBYTE(v37) = 0;
LABEL_58:
  if (__src)
  {
    v40 = __src;
    operator delete(__src);
  }

  return v37;
}

+ (BOOL)skipSubtreeWithStream:(_xmlTextReader *)a3 endNodeType:(int64_t)a4 readerState:(id)a5
{
  v8 = xmlTextReaderNodeType(a3);
  v9 = xmlTextReaderDepth(a3);
  if (v8 == a4)
  {
    return 1;
  }

  v10 = v9;
  if (v8 == 1)
  {
    if (xmlTextReaderIsEmptyElement(a3))
    {
      return 1;
    }
  }

  v12 = xmlTextReaderRead(a3);
  if (v12 == 1)
  {
    while (1)
    {
      v13 = xmlTextReaderDepth(a3);
      v14 = xmlTextReaderNodeType(a3);
      if (v13 == v10 && v14 == a4)
      {
        break;
      }

      if (v14 <= 0xE && ((1 << v14) & 0x6008) != 0)
      {
        if ([a5 shouldCountText])
        {
          v15 = xmlTextReaderConstValue(a3);
          [a5 incrementTextReadBy:xmlStrlen(v15)];
        }
      }

      v12 = xmlTextReaderRead(a3);
      if (v12 != 1)
      {
        return v12 >= 0;
      }
    }

    v12 = 1;
  }

  return v12 >= 0;
}

@end