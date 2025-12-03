@interface PFXStreamReader
+ (BOOL)readWithElementReaders:(id)readers textReader:(Class)reader piReader:(Class)piReader readerState:(id)state;
+ (BOOL)skipSubtreeWithStream:(_xmlTextReader *)stream endNodeType:(int64_t)type readerState:(id)state;
@end

@implementation PFXStreamReader

+ (BOOL)readWithElementReaders:(id)readers textReader:(Class)reader piReader:(Class)piReader readerState:(id)state
{
  streamAPI = [state streamAPI];
  if (!streamAPI)
  {
    LOBYTE(v37) = 0;
    return v37;
  }

  v12 = streamAPI;
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
          if (piReader)
          {
            [(objc_class *)piReader readProcessingInstructionFromStream:v12 readerState:state];
          }
        }

        else if (v15 == 15)
        {
          [objc_msgSend(objc_msgSend(state "currentXmlStackEntry")];
          [state popReader];
          v40 -= 8;
        }

        goto LABEL_51;
      }

LABEL_13:
      if (reader)
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

        [(objc_class *)reader readTextFromStream:v12 childIndex:v17 readerState:state];
        if ([state shouldCountText])
        {
          v20 = xmlTextReaderConstValue(v12);
          [state incrementTextReadBy:xmlStrlen(v20)];
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
        if ([state namespaceCheck])
        {
          v33 = xmlTextReaderConstNamespaceUri(v12);
        }

        v34 = [readers elementInfoForElementName:xmlTextReaderConstLocalName(v12) elementNamespace:v33];
        mappingClass = [v34 mappingClass];
        if (!mappingClass)
        {
          v16 = [self skipSubtreeWithStream:v12 endNodeType:15 readerState:state];
          v40 -= 8;
LABEL_45:
          if ((v16 & 1) == 0)
          {
            goto LABEL_57;
          }

          break;
        }

        v36 = objc_alloc_init(mappingClass);
        [state pushReader:v36 elementInfo:v34 cfiPath:{+[PFXCommon cfiPathToNodeWithDepth:nodeArray:idArray:](PFXCommon, "cfiPathToNodeWithDepth:nodeArray:idArray:", v29, &__src, 0)}];
        if ([v36 mapStartElementWithState:state])
        {
          if (xmlTextReaderIsEmptyElement(v12))
          {
            [objc_msgSend(objc_msgSend(state "currentXmlStackEntry")];
            [state popReader];
            goto LABEL_49;
          }
        }

        else
        {
          if (([self skipSubtreeWithStream:v12 endNodeType:15 readerState:state] & 1) == 0)
          {

            goto LABEL_57;
          }

          [state popReader];
LABEL_49:
          v40 -= 8;
        }

        break;
      case 3:
        goto LABEL_13;
      case 6:
        v16 = [self skipSubtreeWithStream:v12 endNodeType:16 readerState:state];
        goto LABEL_45;
    }

LABEL_51:
    if ([state isCancelled])
    {
      goto LABEL_55;
    }
  }

  if ((v13 & 0x80000000) == 0)
  {
LABEL_55:
    v37 = [state isCancelled] ^ 1;
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

+ (BOOL)skipSubtreeWithStream:(_xmlTextReader *)stream endNodeType:(int64_t)type readerState:(id)state
{
  v8 = xmlTextReaderNodeType(stream);
  v9 = xmlTextReaderDepth(stream);
  if (v8 == type)
  {
    return 1;
  }

  v10 = v9;
  if (v8 == 1)
  {
    if (xmlTextReaderIsEmptyElement(stream))
    {
      return 1;
    }
  }

  v12 = xmlTextReaderRead(stream);
  if (v12 == 1)
  {
    while (1)
    {
      v13 = xmlTextReaderDepth(stream);
      v14 = xmlTextReaderNodeType(stream);
      if (v13 == v10 && v14 == type)
      {
        break;
      }

      if (v14 <= 0xE && ((1 << v14) & 0x6008) != 0)
      {
        if ([state shouldCountText])
        {
          v15 = xmlTextReaderConstValue(stream);
          [state incrementTextReadBy:xmlStrlen(v15)];
        }
      }

      v12 = xmlTextReaderRead(stream);
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