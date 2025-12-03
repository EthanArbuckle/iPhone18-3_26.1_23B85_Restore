@interface AXElementGroup
+ (AXElementGroup)groupWithElements:(id)elements label:(id)label;
+ (AXElementGroup)groupWithGenerator:(id)generator;
- (AXElementGroup)initWithElements:(id)elements label:(id)label;
- (AXElementGroup)initWithGenerator:(id)generator;
- (AXElementGroupGenerator)generator;
- (BOOL)containsNativeFocusElement;
- (BOOL)isEqual:(id)equal;
- (CGRect)frame;
- (id)_debugBriefDescription;
- (id)_debugDescriptionForScanningBehaviorTraits;
- (id)_debugDescriptionForTraits;
- (id)_debugFullDescriptionWithIndent:(id)indent;
- (id)_leafAXElementWithPosition:(int64_t)position;
- (id)_siblingOfChild:(id)child inDirection:(BOOL)direction didWrap:(BOOL *)wrap;
- (id)ancestorPassingTest:(id)test;
- (id)childrenPassingTest:(id)test;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descendantsPassingTest:(id)test;
- (id)firstChildMatchingItem:(id)item;
- (id)firstChildPassingTest:(id)test;
- (id)firstDescendantMatchingItem:(id)item;
- (id)firstDescendantPassingTest:(id)test;
- (id)groupByAppendingGroupable:(id)groupable;
- (id)groupByPrependingGroupable:(id)groupable;
- (id)groupByRemovingGroupable:(id)groupable;
- (id)groupByReplacingGroupable:(id)groupable withGroupable:(id)withGroupable;
- (id)highestAncestorGroup;
- (id)keyboardContainerRows;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)count;
- (unint64_t)indexOfObject:(id)object;
- (unint64_t)numberOfElements;
- (void)_commonInitWithElements:(id)elements label:(id)label generator:(id)generator;
- (void)_generateGroupsIfNeeded;
- (void)_notifyGroupObserversDidTransferStateToGroup:(id)group;
- (void)_notifyGroupObserversWillTransferStateToGroup:(id)group;
- (void)_transferStateToGroup:(id)group;
- (void)dealloc;
- (void)enumerateLeafDescendantsUsingBlock:(id)block;
- (void)registerGroupObserver:(id)observer;
- (void)unregisterAllGroupObservers;
- (void)unregisterGroupObserver:(id)observer;
@end

@implementation AXElementGroup

+ (AXElementGroup)groupWithElements:(id)elements label:(id)label
{
  labelCopy = label;
  elementsCopy = elements;
  v7 = [objc_alloc(objc_opt_class()) initWithElements:elementsCopy label:labelCopy];

  return v7;
}

+ (AXElementGroup)groupWithGenerator:(id)generator
{
  generatorCopy = generator;
  v4 = [objc_alloc(objc_opt_class()) initWithGenerator:generatorCopy];

  return v4;
}

- (AXElementGroup)initWithElements:(id)elements label:(id)label
{
  elementsCopy = elements;
  labelCopy = label;
  v11.receiver = self;
  v11.super_class = AXElementGroup;
  v8 = [(AXElementGroup *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXElementGroup *)v8 _commonInitWithElements:elementsCopy label:labelCopy generator:0];
  }

  return v9;
}

- (AXElementGroup)initWithGenerator:(id)generator
{
  generatorCopy = generator;
  v8.receiver = self;
  v8.super_class = AXElementGroup;
  v5 = [(AXElementGroup *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXElementGroup *)v5 _commonInitWithElements:0 label:0 generator:generatorCopy];
  }

  return v6;
}

- (void)_commonInitWithElements:(id)elements label:(id)label generator:(id)generator
{
  v26 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  labelCopy = label;
  generatorCopy = generator;
  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  [(AXElementGroup *)self setGroupObservers:weakObjectsHashTable];

  if (generatorCopy)
  {
    [(AXElementGroup *)self setGenerator:generatorCopy];
  }

  else
  {
    v12 = [elementsCopy copy];
    elementStore = self->_elementStore;
    self->_elementStore = v12;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = self->_elementStore;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v21 + 1) + 8 * v18++) setParentGroup:{self, v21}];
        }

        while (v16 != v18);
        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    v19 = [labelCopy copy];
    label = self->_label;
    self->_label = v19;
  }
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  [(AXElementGroup *)self unregisterAllGroupObservers];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_elementStore;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        parentGroup = [v8 parentGroup];

        if (parentGroup == self)
        {
          [v8 setParentGroup:0];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = AXElementGroup;
  [(AXElementGroup *)&v10 dealloc];
}

- (id)groupByPrependingGroupable:(id)groupable
{
  if (groupable)
  {
    label2 = [MEMORY[0x1E695DF70] arrayWithObject:?];
    [label2 addObjectsFromArray:self];
    v5 = objc_opt_class();
    label = [(AXElementGroup *)self label];
    v7 = [v5 groupWithElements:label2 label:label];

    [(AXElementGroup *)self _transferStateToGroup:v7];
  }

  else
  {
    v8 = objc_opt_class();
    label2 = [(AXElementGroup *)self label];
    v7 = [v8 groupWithElements:self label:label2];
  }

  return v7;
}

- (id)groupByAppendingGroupable:(id)groupable
{
  groupableCopy = groupable;
  if (groupableCopy)
  {
    label2 = [(NSArray *)self->_elementStore mutableCopy];
    [label2 addObject:groupableCopy];
    v6 = objc_opt_class();
    label = [(AXElementGroup *)self label];
    v8 = [v6 groupWithElements:label2 label:label];

    [(AXElementGroup *)self _transferStateToGroup:v8];
  }

  else
  {
    v9 = objc_opt_class();
    label2 = [(AXElementGroup *)self label];
    v8 = [v9 groupWithElements:self label:label2];
  }

  return v8;
}

- (id)groupByRemovingGroupable:(id)groupable
{
  elementStore = self->_elementStore;
  groupableCopy = groupable;
  v6 = [(NSArray *)elementStore mutableCopy];
  [v6 removeObject:groupableCopy];

  v7 = objc_opt_class();
  label = [(AXElementGroup *)self label];
  v9 = [v7 groupWithElements:v6 label:label];

  [(AXElementGroup *)self _transferStateToGroup:v9];

  return v9;
}

- (id)groupByReplacingGroupable:(id)groupable withGroupable:(id)withGroupable
{
  withGroupableCopy = withGroupable;
  elementStore = self->_elementStore;
  groupableCopy = groupable;
  v9 = [(NSArray *)elementStore mutableCopy];
  v10 = [v9 indexOfObject:groupableCopy];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 replaceObjectAtIndex:v10 withObject:withGroupableCopy];
  }

  v11 = objc_opt_class();
  label = [(AXElementGroup *)self label];
  v13 = [v11 groupWithElements:v9 label:label];

  [(AXElementGroup *)self _transferStateToGroup:v13];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  elementStore = self->_elementStore;
  v5 = objc_alloc(objc_opt_class());
  v6 = v5;
  if (elementStore)
  {
    v7 = [v5 initWithElements:self->_elementStore label:self->_label];
  }

  else
  {
    generator = [(AXElementGroup *)self generator];
    v7 = [v6 initWithGenerator:generator];
  }

  [(AXElementGroup *)self _transferStateToGroup:v7];
  return v7;
}

- (void)_transferStateToGroup:(id)group
{
  groupCopy = group;
  [(AXElementGroup *)self _notifyGroupObserversWillTransferStateToGroup:groupCopy];
  [groupCopy setGroupTraits:{-[AXElementGroup groupTraits](self, "groupTraits")}];
  [groupCopy setUserDefinedScanningBehaviorTraits:{-[AXElementGroup userDefinedScanningBehaviorTraits](self, "userDefinedScanningBehaviorTraits")}];
  elementCommunity = [(AXElementGroup *)self elementCommunity];
  [groupCopy setElementCommunity:elementCommunity];

  identifier = [(AXElementGroup *)self identifier];
  [groupCopy setIdentifier:identifier];

  [(AXElementGroup *)self _notifyGroupObserversDidTransferStateToGroup:groupCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = AXElementGroup;
  if ([(AXElementGroup *)&v9 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(AXElementGroup *)self identifier];
      identifier2 = [equalCopy identifier];
      v5 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)count
{
  [(AXElementGroup *)self _generateGroupsIfNeeded];
  elementStore = self->_elementStore;

  return [(NSArray *)elementStore count];
}

- (id)objectAtIndex:(unint64_t)index
{
  [(AXElementGroup *)self _generateGroupsIfNeeded];
  elementStore = self->_elementStore;

  return [(NSArray *)elementStore objectAtIndex:index];
}

- (unint64_t)indexOfObject:(id)object
{
  objectCopy = object;
  [(AXElementGroup *)self _generateGroupsIfNeeded];
  if ([(NSArray *)self->_elementStore count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSArray *)self->_elementStore objectAtIndex:v5];

      if (v6 == objectCopy)
      {
        break;
      }

      if ([(NSArray *)self->_elementStore count]<= ++v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (CGRect)frame
{
  v35 = *MEMORY[0x1E69E9840];
  elementCommunity = [(AXElementGroup *)self elementCommunity];
  if (elementCommunity)
  {
    v4 = elementCommunity;
    elementCommunity2 = [(AXElementGroup *)self elementCommunity];
    if ([elementCommunity2 isSpringBoard])
    {
LABEL_5:

      goto LABEL_6;
    }

    elementCommunity3 = [(AXElementGroup *)self elementCommunity];
    application = [elementCommunity3 application];
    if ([application isAXUIServer])
    {

      goto LABEL_5;
    }

    isKeyboardContainer = [(AXElementGroup *)self isKeyboardContainer];

    if (!isKeyboardContainer)
    {
      selfCopy = [(AXElementGroup *)self elementCommunity];
      [(AXElementGroup *)selfCopy frame];
      x = v26;
      y = v27;
      width = v28;
      height = v29;
      goto LABEL_13;
    }
  }

LABEL_6:
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  v13 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(selfCopy);
        }

        [*(*(&v30 + 1) + 8 * v16) frame];
        v39.origin.x = v17;
        v39.origin.y = v18;
        v39.size.width = v19;
        v39.size.height = v20;
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        v37 = CGRectUnion(v36, v39);
        x = v37.origin.x;
        y = v37.origin.y;
        width = v37.size.width;
        height = v37.size.height;
        ++v16;
      }

      while (v14 != v16);
      v14 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

LABEL_13:

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)highestAncestorGroup
{
  selfCopy = self;
  if (selfCopy)
  {
    parentGroup = selfCopy;
    v4 = selfCopy;
    do
    {
      v5 = parentGroup;

      parentGroup = [(AXElementGroup *)v5 parentGroup];

      v4 = v5;
    }

    while (parentGroup);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_generateGroupsIfNeeded
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_elementStore)
  {
    generator = [(AXElementGroup *)self generator];

    if (generator)
    {
      generator2 = [(AXElementGroup *)self generator];
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        generator3 = [(AXElementGroup *)self generator];
        [generator3 willGenerateElements:self];
      }

      generator4 = [(AXElementGroup *)self generator];
      v8 = [generator4 generateElementsForGroup:self];

      objc_storeStrong(&self->_elementStore, v8);
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = self->_elementStore;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          v13 = 0;
          do
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v17 + 1) + 8 * v13++) setParentGroup:{self, v17}];
          }

          while (v11 != v13);
          v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
      }

      generator5 = [(AXElementGroup *)self generator];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        generator6 = [(AXElementGroup *)self generator];
        [generator6 didGenerateElements:self];
      }
    }
  }
}

- (id)_siblingOfChild:(id)child inDirection:(BOOL)direction didWrap:(BOOL *)wrap
{
  directionCopy = direction;
  v8 = [(AXElementGroup *)self indexOfObject:child];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    v10 = 0;
    if (!wrap)
    {
      goto LABEL_17;
    }

LABEL_16:
    *wrap = v10;
    goto LABEL_17;
  }

  v11 = v8;
  v12 = [(AXElementGroup *)self count];
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = v12 - 1;
  }

  if (v11 + 1 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 + 1;
  }

  v15 = !directionCopy;
  if (directionCopy)
  {
    v10 = v11 + 1 == v12;
  }

  else
  {
    v10 = v11 == 0;
  }

  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  v9 = [(AXElementGroup *)self objectAtIndex:v16];
  if (wrap)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v9;
}

- (id)firstChildMatchingItem:(id)item
{
  v15 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (itemCopy)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    selfCopy = self;
    v6 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(selfCopy);
          }

          if ([itemCopy isEqual:{*(*(&v10 + 1) + 8 * i), v10}])
          {
            v6 = itemCopy;
            goto LABEL_12;
          }
        }

        v6 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)firstChildPassingTest:(id)test
{
  v16 = *MEMORY[0x1E69E9840];
  testCopy = test;
  if (testCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    selfCopy = self;
    v6 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(selfCopy);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (testCopy[2](testCopy, v9))
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)childrenPassingTest:(id)test
{
  v19 = *MEMORY[0x1E69E9840];
  testCopy = test;
  if (testCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    selfCopy = self;
    v7 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(selfCopy);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (testCopy[2](testCopy, v11))
          {
            [array addObject:{v11, v14}];
          }
        }

        v8 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    if ([array count])
    {
      v12 = array;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)firstDescendantMatchingItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithArray:self];
    v6 = v5;
    while ([v5 count])
    {
      firstObject = [v6 firstObject];
      [v6 removeObject:firstObject];
      if ([itemCopy isEqual:firstObject])
      {
        goto LABEL_9;
      }

      if ([firstObject isGroup])
      {
        [v6 addObjectsFromArray:firstObject];
      }

      v5 = v6;
    }

    firstObject = 0;
LABEL_9:
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)firstDescendantPassingTest:(id)test
{
  testCopy = test;
  if (testCopy)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithArray:self];
    if ([v5 count])
    {
      while (1)
      {
        firstObject = [v5 firstObject];
        [v5 removeObject:firstObject];
        if (testCopy[2](testCopy, firstObject))
        {
          break;
        }

        if ([firstObject isGroup])
        {
          [v5 addObjectsFromArray:firstObject];
        }

        if (![v5 count])
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)descendantsPassingTest:(id)test
{
  testCopy = test;
  if (testCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:self];
    while ([v6 count])
    {
      firstObject = [v6 firstObject];
      [v6 removeObject:firstObject];
      if (testCopy[2](testCopy, firstObject))
      {
        [array addObject:firstObject];
      }

      if ([firstObject isGroup])
      {
        [v6 addObjectsFromArray:firstObject];
      }
    }

    if ([array count])
    {
      v8 = array;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)ancestorPassingTest:(id)test
{
  testCopy = test;
  if (testCopy)
  {
    selfCopy = self;
    if (selfCopy)
    {
      do
      {
        if (testCopy[2](testCopy, selfCopy))
        {
          break;
        }

        parentGroup = [(AXElementGroup *)selfCopy parentGroup];

        selfCopy = parentGroup;
      }

      while (parentGroup);
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)enumerateLeafDescendantsUsingBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 isGroup])
        {
          [v10 enumerateLeafDescendantsUsingBlock:blockCopy];
        }

        else
        {
          blockCopy[2](blockCopy, v10);
        }
      }

      v7 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)keyboardContainerRows
{
  if ([(AXElementGroup *)self isKeyboardContainer])
  {
    v3 = [(AXElementGroup *)self childrenPassingTest:&__block_literal_global_17];
    if ([v3 count])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __39__AXElementGroup_keyboardContainerRows__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isGroup])
  {
    v3 = [v2 isKeyboardRow];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)numberOfElements
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v3 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isGroup])
        {
          numberOfElements = [v8 numberOfElements];
        }

        else
        {
          numberOfElements = 1;
        }

        v5 += numberOfElements;
      }

      v4 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __43__AXElementGroup_descendantWithNativeFocus__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isNativeFocused];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)containsNativeFocusElement
{
  descendantWithNativeFocus = [(AXElementGroup *)self descendantWithNativeFocus];
  v3 = descendantWithNativeFocus != 0;

  return v3;
}

- (id)_leafAXElementWithPosition:(int64_t)position
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AXElementGroup__leafAXElementWithPosition___block_invoke;
  v5[3] = &unk_1E80D4818;
  v5[4] = &v6;
  v5[5] = position;
  [(AXElementGroup *)self enumerateLeafDescendantsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __45__AXElementGroup__leafAXElementWithPosition___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = *(a1 + 40);
  if (v8 > 1)
  {
    if (v8 == 3)
    {
      [v4 frame];
      MaxX = CGRectGetMaxX(v21);
      [*(*(*(a1 + 32) + 8) + 40) frame];
      MaxY = CGRectGetMaxX(v22);
      goto LABEL_13;
    }

    if (v8 != 2)
    {
      goto LABEL_16;
    }

    [v4 frame];
    MinX = CGRectGetMinX(v17);
    [*(*(*(a1 + 32) + 8) + 40) frame];
    MinY = CGRectGetMinX(v18);
  }

  else
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_16;
      }

      [v4 frame];
      MaxX = CGRectGetMaxY(v15);
      [*(*(*(a1 + 32) + 8) + 40) frame];
      MaxY = CGRectGetMaxY(v16);
LABEL_13:
      if (MaxX <= MaxY)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    [v4 frame];
    MinX = CGRectGetMinY(v19);
    [*(*(*(a1 + 32) + 8) + 40) frame];
    MinY = CGRectGetMinY(v20);
  }

  if (MinX < MinY)
  {
LABEL_14:
    v6 = (*(*(a1 + 32) + 8) + 40);
LABEL_15:
    objc_storeStrong(v6, a2);
  }

LABEL_16:

  return MEMORY[0x1EEE66BB8]();
}

- (void)registerGroupObserver:(id)observer
{
  observerCopy = observer;
  groupObservers = [(AXElementGroup *)self groupObservers];
  [groupObservers addObject:observerCopy];
}

- (void)unregisterGroupObserver:(id)observer
{
  observerCopy = observer;
  groupObservers = [(AXElementGroup *)self groupObservers];
  [groupObservers removeObject:observerCopy];
}

- (void)unregisterAllGroupObservers
{
  groupObservers = [(AXElementGroup *)self groupObservers];
  [groupObservers removeAllObjects];
}

- (void)_notifyGroupObserversWillTransferStateToGroup:(id)group
{
  v16 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  groupObservers = [(AXElementGroup *)self groupObservers];
  v6 = [groupObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(groupObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 group:self willTransferStateToGroup:groupCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [groupObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyGroupObserversDidTransferStateToGroup:(id)group
{
  v16 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  groupObservers = [(AXElementGroup *)self groupObservers];
  v6 = [groupObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(groupObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 group:self didTransferStateToGroup:groupCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [groupObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_debugDescriptionForScanningBehaviorTraits
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"ScanAttrs:["];
  if (([(AXElementGroup *)self userDefinedScanningBehaviorTraits]& 0x10) != 0)
  {
    [v3 appendString:@" (delegated)"];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  scatScanningBehaviorTraits = [(AXElementGroup *)self scatScanningBehaviorTraits];
  v5 = scatScanningBehaviorTraits;
  if ((scatScanningBehaviorTraits & 2) == 0)
  {
    if ((scatScanningBehaviorTraits & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    [v3 appendString:@" include-h-scroll-group"];
    if ((v5 & 8) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_14;
  }

  [v3 appendString:@" include-v-scroll-group"];
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v5 & 8) == 0)
  {
    goto LABEL_7;
  }

LABEL_14:
  [v3 appendString:@" include-v-scroll-top"];
  if ((v5 & 4) != 0)
  {
LABEL_8:
    [v3 appendString:@" include-h-scroll-top"];
  }

LABEL_9:
  [v3 appendString:@"]"];

  return v3;
}

- (id)_debugDescriptionForTraits
{
  string = [MEMORY[0x1E696AD60] string];
  if (([(AXElementGroup *)self groupTraits]& 1) != 0)
  {
    [string appendString:@" <Keyboard> "];
  }

  if (([(AXElementGroup *)self groupTraits]& 2) != 0)
  {
    [string appendString:@" <Keyboard Row> "];
  }

  if (([(AXElementGroup *)self groupTraits]& 0x20) != 0)
  {
    [string appendString:@" <Fixed Subgroups> "];
  }

  if (([(AXElementGroup *)self groupTraits]& 0x40) != 0)
  {
    [string appendString:@" <Resists Being Grouped> "];
  }

  if (([(AXElementGroup *)self groupTraits]& 0x10) != 0)
  {
    [string appendString:@" <Unsplittable> "];
  }

  if (([(AXElementGroup *)self groupTraits]& 0x100) != 0)
  {
    [string appendString:@" <Grouped> "];
  }

  if (([(AXElementGroup *)self groupTraits]& 0x80) != 0)
  {
    [string appendString:@" <Ungrouped> "];
  }

  return string;
}

- (id)_debugBriefDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXElementGroup count](self, "count")}];
  identifier = [(AXElementGroup *)self identifier];
  v6 = [v3 stringWithFormat:@"AXElementGroup<%p>. %@ items. Identifier: %@.", self, v4, identifier];

  _debugDescriptionForTraits = [(AXElementGroup *)self _debugDescriptionForTraits];
  [v6 appendString:_debugDescriptionForTraits];

  _debugDescriptionForScanningBehaviorTraits = [(AXElementGroup *)self _debugDescriptionForScanningBehaviorTraits];
  [v6 appendString:_debugDescriptionForScanningBehaviorTraits];

  return v6;
}

- (id)_debugFullDescriptionWithIndent:(id)indent
{
  v26 = *MEMORY[0x1E69E9840];
  indentCopy = indent;
  v5 = MEMORY[0x1E696AD60];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXElementGroup count](self, "count")}];
  label = [(AXElementGroup *)self label];
  identifier = [(AXElementGroup *)self identifier];
  v9 = [v5 stringWithFormat:@"AXElementGroup<%p>. %@ items. Label: %@. Identifier: %@.", self, v6, label, identifier];

  if ([(AXElementGroup *)self count])
  {
    _debugDescriptionForTraits = [(AXElementGroup *)self _debugDescriptionForTraits];
    [v9 appendString:_debugDescriptionForTraits];

    _debugDescriptionForScanningBehaviorTraits = [(AXElementGroup *)self _debugDescriptionForScanningBehaviorTraits];
    [v9 appendString:_debugDescriptionForScanningBehaviorTraits];

    [v9 appendFormat:@" Children:\n"];
    v12 = [indentCopy stringByAppendingString:@" "];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    selfCopy = self;
    v14 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(selfCopy);
          }

          v18 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v18 _debugFullDescriptionWithIndent:v12];
            [v9 appendFormat:@"%@%@\n", v12, v19];
          }

          else
          {
            [v9 appendFormat:@"%@%@\n", v12, v18];
          }
        }

        v15 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v12 = indentCopy;
  }

  return v9;
}

- (AXElementGroupGenerator)generator
{
  WeakRetained = objc_loadWeakRetained(&self->_generator);

  return WeakRetained;
}

@end