@interface CRLSelectionPath
+ (CRLSelectionPath)selectionPathWithSelectionArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (CRLSelectionPath)initWithSelectionArray:(id)array;
- (CRLSelectionPath)selectionPathWithAppendedSelection:(id)selection;
- (CRLSelectionPath)selectionPathWithAppendedSelections:(id)selections;
- (NSString)UUIDDescription;
- (id)description;
- (id)leastSpecificSelectionOfClass:(Class)class;
- (id)mostSpecificSelectionConformingToProtocol:(id)protocol;
- (id)mostSpecificSelectionOfClass:(Class)class;
- (id)selectionAtIndex:(unint64_t)index;
- (id)selectionPathByAppendingOrReplacingMostSpecificSelectionWithSelection:(id)selection;
- (id)selectionPathPoppingOffSelection:(id)selection;
- (id)selectionPathPoppingToSelection:(id)selection;
- (id)selectionPathReplacingMostSpecificLocationOfSelection:(id)selection withSelection:(id)withSelection;
- (void)enumerateSelectionsLeastToMostSpecificInPathUsingBlock:(id)block;
- (void)enumerateSelectionsMostToLeastSpecificInPathUsingBlock:(id)block;
@end

@implementation CRLSelectionPath

- (CRLSelectionPath)initWithSelectionArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = CRLSelectionPath;
  v5 = [(CRLSelectionPath *)&v9 init];
  if (v5)
  {
    if (!arrayCopy)
    {
      arrayCopy = +[NSArray array];
    }

    v6 = [arrayCopy copy];
    currentSelection = v5->_currentSelection;
    v5->_currentSelection = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [v5[1] count];
      if (v6 == [(NSArray *)self->_currentSelection count])
      {
        if ([(NSArray *)self->_currentSelection count])
        {
          v7 = 0;
          do
          {
            v8 = [(NSArray *)self->_currentSelection objectAtIndexedSubscript:v7];
            v9 = [v5[1] objectAtIndexedSubscript:v7];
            v10 = [v8 isEqual:v9];

            if ((v10 & 1) == 0)
            {
              break;
            }

            ++v7;
          }

          while (v7 < [(NSArray *)self->_currentSelection count]);
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)selectionAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_currentSelection count]<= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101397234();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101397248();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013972F4();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLSelectionPath selectionAtIndex:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPath.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:68 isFatal:0 description:"Requested selection index %tu is out of range!", index];

    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_currentSelection objectAtIndexedSubscript:index];
  }

  return v5;
}

+ (CRLSelectionPath)selectionPathWithSelectionArray:(id)array
{
  arrayCopy = array;
  v4 = [[CRLSelectionPath alloc] initWithSelectionArray:arrayCopy];

  return v4;
}

- (CRLSelectionPath)selectionPathWithAppendedSelection:(id)selection
{
  if (selection)
  {
    selectionCopy = selection;
    selectionCopy2 = selection;
    v5 = [NSArray arrayWithObjects:&selectionCopy count:1];

    selfCopy = [(CRLSelectionPath *)self selectionPathWithAppendedSelections:v5, selectionCopy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (CRLSelectionPath)selectionPathWithAppendedSelections:(id)selections
{
  selectionsCopy = selections;
  if (!selectionsCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139731C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101397330();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013973D0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLSelectionPath selectionPathWithAppendedSelections:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPath.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:92 isFatal:0 description:"invalid nil value for '%{public}s'", "selections"];
  }

  if (![selectionsCopy count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013973F8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101397420();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013974B0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLSelectionPath selectionPathWithAppendedSelections:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPath.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:93 isFatal:0 description:"Must send in some selection to append"];
  }

  orderedSelections = [(CRLSelectionPath *)self orderedSelections];
  v12 = [orderedSelections mutableCopy];

  [v12 addObjectsFromArray:selectionsCopy];
  v13 = [CRLSelectionPath selectionPathWithSelectionArray:v12];

  return v13;
}

- (id)selectionPathPoppingOffSelection:(id)selection
{
  selectionCopy = selection;
  orderedSelections = [(CRLSelectionPath *)self orderedSelections];
  v6 = [orderedSelections mutableCopy];

  v7 = [v6 indexOfObjectIdenticalTo:selectionCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013974D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013974EC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139757C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLSelectionPath selectionPathPoppingOffSelection:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPath.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:102 isFatal:0 description:"Cannot pop to selection that is not in a selection path."];
  }

  else
  {
    [v6 crl_trimObjectsFromIndex:v7];
  }

  v11 = [CRLSelectionPath selectionPathWithSelectionArray:v6];

  return v11;
}

- (id)selectionPathPoppingToSelection:(id)selection
{
  selectionCopy = selection;
  orderedSelections = [(CRLSelectionPath *)self orderedSelections];
  v6 = [orderedSelections mutableCopy];

  v7 = [v6 indexOfObjectIdenticalTo:selectionCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013975A4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013975B8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101397648();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLSelectionPath selectionPathPoppingToSelection:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPath.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:112 isFatal:0 description:"Cannot pop to selection that is not in a selection path."];
  }

  else if (v7 < [v6 count] - 1)
  {
    [v6 crl_trimObjectsFromIndex:v7 + 1];
  }

  v11 = [CRLSelectionPath selectionPathWithSelectionArray:v6];

  return v11;
}

- (id)selectionPathReplacingMostSpecificLocationOfSelection:(id)selection withSelection:(id)withSelection
{
  selectionCopy = selection;
  withSelectionCopy = withSelection;
  v8 = withSelectionCopy;
  if (!selectionCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139773C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101397750();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013977F0();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLSelectionPath selectionPathReplacingMostSpecificLocationOfSelection:withSelection:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPath.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:120 isFatal:0 description:"invalid nil value for '%{public}s'", "oldSelection"];

    if (v8)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  if (!withSelectionCopy)
  {
LABEL_17:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101397818();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101397840();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013978E0();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v16);
    }

    v17 = [NSString stringWithUTF8String:"[CRLSelectionPath selectionPathReplacingMostSpecificLocationOfSelection:withSelection:]"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPath.m"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:121 isFatal:0 description:"invalid nil value for '%{public}s'", "newSelection"];

LABEL_26:
    selfCopy = self;
    goto LABEL_38;
  }

  v9 = [(NSArray *)self->_currentSelection count];
  if ((v9 - 1) < 0)
  {
    goto LABEL_28;
  }

  v10 = v9;
  while (1)
  {
    v11 = [(NSArray *)self->_currentSelection objectAtIndexedSubscript:--v10];
    v12 = v11;
    if (v11 == selectionCopy)
    {
      break;
    }

    if (v10 <= 0)
    {
      goto LABEL_28;
    }
  }

  v20 = [(NSArray *)self->_currentSelection mutableCopy];
  [v20 replaceObjectAtIndex:v10 withObject:v8];
  v21 = [CRLSelectionPath selectionPathWithSelectionArray:v20];

  selfCopy2 = v21;
  if (!v21)
  {
LABEL_28:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101397670();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101397684();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101397714();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v23);
    }

    v24 = [NSString stringWithUTF8String:"[CRLSelectionPath selectionPathReplacingMostSpecificLocationOfSelection:withSelection:]"];
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPath.m"];
    [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:137 isFatal:0 description:"Cannot replace a selection that is not in the selection path."];

    v21 = 0;
    selfCopy2 = self;
  }

  selfCopy = selfCopy2;

LABEL_38:

  return selfCopy;
}

- (id)selectionPathByAppendingOrReplacingMostSpecificSelectionWithSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    orderedSelections = [(CRLSelectionPath *)self orderedSelections];
    v6 = [orderedSelections mutableCopy];

    lastObject = [v6 lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 replaceObjectAtIndex:objc_msgSend(v6 withObject:{"count") - 1, selectionCopy}];
    }

    else
    {
      [v6 addObject:selectionCopy];
    }

    selfCopy = [CRLSelectionPath selectionPathWithSelectionArray:v6];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)mostSpecificSelectionOfClass:(Class)class
{
  if (class)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    reverseObjectEnumerator = [(NSArray *)self->_currentSelection reverseObjectEnumerator];
    v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            lastObject = v8;
            goto LABEL_12;
          }
        }

        v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    lastObject = 0;
LABEL_12:
  }

  else
  {
    lastObject = [(NSArray *)self->_currentSelection lastObject];
  }

  return lastObject;
}

- (id)mostSpecificSelectionConformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  reverseObjectEnumerator = [(NSArray *)self->_currentSelection reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 conformsToProtocol:protocolCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)leastSpecificSelectionOfClass:(Class)class
{
  if (class)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_currentSelection;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            firstObject = v8;
            goto LABEL_12;
          }
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    firstObject = 0;
LABEL_12:
  }

  else
  {
    firstObject = [(NSArray *)self->_currentSelection firstObject];
  }

  return firstObject;
}

- (void)enumerateSelectionsMostToLeastSpecificInPathUsingBlock:(id)block
{
  blockCopy = block;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  reverseObjectEnumerator = [(NSArray *)self->_currentSelection reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateSelectionsLeastToMostSpecificInPathUsingBlock:(id)block
{
  blockCopy = block;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSArray *)self->_currentSelection objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(objectEnumerator);
      }

      blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)description
{
  v3 = sub_1000FAE40(self->_currentSelection);
  v4 = [NSString stringWithFormat:@"<CRLSelectionPath: %p  %@>", self, v3];

  return v4;
}

- (NSString)UUIDDescription
{
  v3 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [(NSArray *)self->_currentSelection objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        uUIDDescription = [*(*(&v13 + 1) + 8 * i) UUIDDescription];
        [v3 addObject:uUIDDescription];
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = sub_1000FAE40(v3);
  v11 = [NSString stringWithFormat:@"<CRLSelectionPath: %@>", v10];

  return v11;
}

@end