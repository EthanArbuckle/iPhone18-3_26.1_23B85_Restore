@interface AKPageModelController
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
- (AKPageModelController)init;
- (AKPageModelController)initWithArchivableRepresentation:(id)representation;
- (AKStatistics)statisticsLogger;
- (BOOL)hasHDRAnnotation;
- (BOOL)hasMaskBorderAnnotation;
- (CGImage)renderAnnotationsOnImage:(CGImage *)image wantsHDR:(BOOL)r opaque:(BOOL)opaque withTransform:(CGAffineTransform *)transform shouldApplyCropRect:(BOOL)rect forPreview:(BOOL)preview;
- (CGRect)appliedCropRect;
- (double)annotationHeadroom;
- (id)archivableRepresentation;
- (id)representedObject;
- (id)selectionStateForUndo;
- (void)_coalescedEnsureInkAnnotationIsInFront:(id)front;
- (void)_enableEditObservationForAnnotationIfNew:(id)new;
- (void)_ensureInkAnnotationIsInFrontWhenEditsAreDone;
- (void)_logAnnotationAdded:(id)added;
- (void)_postSelectedAnnotationsChangedNotification;
- (void)addCropToolAnnotation;
- (void)addSelectedAnnotations:(id)annotations;
- (void)addSelectedAnnotationsObject:(id)object;
- (void)bringSelectedAnnotationsForward;
- (void)bringSelectedAnnotationsToFront;
- (void)insertAnnotations:(id)annotations atIndexes:(id)indexes;
- (void)insertObject:(id)object inAnnotationsAtIndex:(unint64_t)index;
- (void)intersectSelectedAnnotations:(id)annotations;
- (void)removeAllAnnotations;
- (void)removeAnnotationsAtIndexes:(id)indexes;
- (void)removeCropToolAnnotation;
- (void)removeObjectFromAnnotationsAtIndex:(unint64_t)index;
- (void)removeSelectedAnnotations:(id)annotations;
- (void)removeSelectedAnnotationsObject:(id)object;
- (void)replaceAnnotationsAtIndexes:(id)indexes withAnnotations:(id)annotations;
- (void)replaceObjectInAnnotationsAtIndex:(unint64_t)index withObject:(id)object;
- (void)restoreSelectionStateForUndo:(id)undo;
- (void)selectAllAnnotations;
- (void)selectAnnotation:(id)annotation byExtendingSelection:(BOOL)selection;
- (void)selectAnnotationsAtIndexes:(id)indexes byExtendingSelection:(BOOL)selection;
- (void)sendSelectedAnnotationsBackward;
- (void)sendSelectedAnnotationsToBack;
- (void)setInkCanvasAnnotation:(id)annotation;
- (void)setInkCanvasAnnotationOneTime:(id)time;
- (void)setSelectedAnnotations:(id)annotations;
@end

@implementation AKPageModelController

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___AKPageModelController;
  keyCopy = key;
  v4 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  v5 = [keyCopy isEqualToString:{@"selectedAnnotations", v7.receiver, v7.super_class}];

  return (v5 ^ 1) & v4;
}

- (AKPageModelController)init
{
  v9.receiver = self;
  v9.super_class = AKPageModelController;
  v2 = [(AKPageModelController *)&v9 init];
  if (v2)
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v4 = *(v2 + 1);
    *(v2 + 1) = orderedSet;

    v5 = [MEMORY[0x277CBEB58] set];
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = *(MEMORY[0x277CBF390] + 16);
    *(v2 + 56) = *MEMORY[0x277CBF390];
    *(v2 + 72) = v7;
  }

  return v2;
}

- (void)insertObject:(id)object inAnnotationsAtIndex:(unint64_t)index
{
  objectCopy = object;
  if (([(NSMutableOrderedSet *)self->_mutableAnnotations containsObject:?]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_mutableAnnotations insertObject:objectCopy atIndex:index];
    [(AKPageModelController *)self _ensureInkAnnotationIsInFrontWhenEditsAreDone];
    inkCanvasAnnotation = [(AKPageModelController *)self inkCanvasAnnotation];

    if (!inkCanvasAnnotation)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(AKPageModelController *)self setInkCanvasAnnotation:objectCopy];
      }
    }

    [(AKPageModelController *)self _enableEditObservationForAnnotationIfNew:objectCopy];
    [(AKPageModelController *)self _logAnnotationAdded:objectCopy];
  }
}

- (void)insertAnnotations:(id)annotations atIndexes:(id)indexes
{
  v33 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  indexesCopy = indexes;
  mutableAnnotations = self->_mutableAnnotations;
  v9 = [MEMORY[0x277CBEB98] setWithArray:annotationsCopy];
  LOBYTE(mutableAnnotations) = [(NSMutableOrderedSet *)mutableAnnotations intersectsSet:v9];

  if (mutableAnnotations)
  {
    firstIndex = [indexesCopy firstIndex];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = annotationsCopy;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(AKPageModelController *)self insertObject:*(*(&v23 + 1) + 8 * i) inAnnotationsAtIndex:firstIndex, v23];
          firstIndex = [indexesCopy indexGreaterThanIndex:firstIndex];
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v13);
    }
  }

  else
  {
    [(NSMutableOrderedSet *)self->_mutableAnnotations insertObjects:annotationsCopy atIndexes:indexesCopy];
    [(AKPageModelController *)self _ensureInkAnnotationIsInFrontWhenEditsAreDone];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = annotationsCopy;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * j);
          inkCanvasAnnotation = [(AKPageModelController *)self inkCanvasAnnotation];

          if (!inkCanvasAnnotation)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(AKPageModelController *)self setInkCanvasAnnotation:v21];
            }
          }

          [(AKPageModelController *)self _enableEditObservationForAnnotationIfNew:v21];
          [(AKPageModelController *)self _logAnnotationAdded:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v18);
    }
  }
}

- (void)_enableEditObservationForAnnotationIfNew:(id)new
{
  newCopy = new;
  if ((sub_23F4ABA3C() & 1) == 0 && ([newCopy isEdited] & 1) == 0 && (objc_msgSend(newCopy, "shouldObserveEdits") & 1) == 0)
  {
    [newCopy setShouldObserveEdits:1];
  }
}

- (void)removeAllAnnotations
{
  v3 = MEMORY[0x277CCAA78];
  annotations = [(AKPageModelController *)self annotations];
  v5 = [v3 indexSetWithIndexesInRange:{0, objc_msgSend(annotations, "count")}];

  [(AKPageModelController *)self removeAnnotationsAtIndexes:v5];
}

- (void)removeObjectFromAnnotationsAtIndex:(unint64_t)index
{
  if ([(NSMutableOrderedSet *)self->_mutableAnnotations count]> index)
  {
    v6 = [(NSMutableOrderedSet *)self->_mutableAnnotations objectAtIndex:index];
    if ([(NSMutableSet *)self->_mutableSelectedAnnotations containsObject:?])
    {
      [(AKPageModelController *)self removeSelectedAnnotationsObject:v6];
    }

    [v6 setShouldObserveEdits:0];
    inkCanvasAnnotation = [(AKPageModelController *)self inkCanvasAnnotation];

    if (inkCanvasAnnotation)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(AKPageModelController *)self setInkCanvasAnnotation:0];
      }
    }

    [(NSMutableOrderedSet *)self->_mutableAnnotations removeObjectAtIndex:index];
  }
}

- (void)removeAnnotationsAtIndexes:(id)indexes
{
  v20 = *MEMORY[0x277D85DE8];
  indexesCopy = indexes;
  v5 = [(NSMutableOrderedSet *)self->_mutableAnnotations objectsAtIndexes:indexesCopy];
  mutableSelectedAnnotations = self->_mutableSelectedAnnotations;
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  LODWORD(mutableSelectedAnnotations) = [(NSMutableSet *)mutableSelectedAnnotations intersectsSet:v7];

  if (mutableSelectedAnnotations)
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:v5];
    [(AKPageModelController *)self removeSelectedAnnotations:v8];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * v13) setShouldObserveEdits:{0, v15}];
        inkCanvasAnnotation = [(AKPageModelController *)self inkCanvasAnnotation];

        if (inkCanvasAnnotation)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(AKPageModelController *)self setInkCanvasAnnotation:0];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(NSMutableOrderedSet *)self->_mutableAnnotations removeObjectsAtIndexes:indexesCopy];
}

- (void)replaceObjectInAnnotationsAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  v6 = [(NSMutableOrderedSet *)self->_mutableAnnotations objectAtIndex:index];
  if ([(NSMutableSet *)self->_mutableSelectedAnnotations containsObject:v6])
  {
    [(AKPageModelController *)self removeSelectedAnnotationsObject:v6];
  }

  [v6 setShouldObserveEdits:0];
  [(NSMutableOrderedSet *)self->_mutableAnnotations replaceObjectAtIndex:index withObject:objectCopy];
  [(AKPageModelController *)self _ensureInkAnnotationIsInFrontWhenEditsAreDone];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AKPageModelController *)self setInkCanvasAnnotation:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AKPageModelController *)self setInkCanvasAnnotation:objectCopy];
  }

  [(AKPageModelController *)self _enableEditObservationForAnnotationIfNew:objectCopy];
}

- (void)replaceAnnotationsAtIndexes:(id)indexes withAnnotations:(id)annotations
{
  v44 = *MEMORY[0x277D85DE8];
  indexesCopy = indexes;
  annotationsCopy = annotations;
  mutableAnnotations = self->_mutableAnnotations;
  v9 = [MEMORY[0x277CBEB98] setWithArray:annotationsCopy];
  LOBYTE(mutableAnnotations) = [(NSMutableOrderedSet *)mutableAnnotations intersectsSet:v9];

  if (mutableAnnotations)
  {
    firstIndex = [indexesCopy firstIndex];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = annotationsCopy;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(AKPageModelController *)self replaceObjectInAnnotationsAtIndex:firstIndex withObject:*(*(&v29 + 1) + 8 * i), v29];
          firstIndex = [indexesCopy indexGreaterThanIndex:firstIndex];
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEB98];
    v17 = [(NSMutableOrderedSet *)self->_mutableAnnotations objectsAtIndexes:indexesCopy];
    v11 = [v16 setWithArray:v17];

    if ([(NSMutableSet *)self->_mutableSelectedAnnotations intersectsSet:v11])
    {
      [(AKPageModelController *)self removeSelectedAnnotations:v11];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    allObjects = [v11 allObjects];
    v19 = [allObjects countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v37 + 1) + 8 * j) setShouldObserveEdits:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(AKPageModelController *)self setInkCanvasAnnotation:0];
          }
        }

        v20 = [allObjects countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v20);
    }

    [(NSMutableOrderedSet *)self->_mutableAnnotations replaceObjectsAtIndexes:indexesCopy withObjects:annotationsCopy];
    [(AKPageModelController *)self _ensureInkAnnotationIsInFrontWhenEditsAreDone];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = annotationsCopy;
    v24 = [v23 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v33 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(AKPageModelController *)self setInkCanvasAnnotation:v28];
          }

          [(AKPageModelController *)self _enableEditObservationForAnnotationIfNew:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v25);
    }
  }
}

- (void)addSelectedAnnotationsObject:(id)object
{
  objectCopy = object;
  cropAnnotation = [(AKPageModelController *)self cropAnnotation];

  if (cropAnnotation != objectCopy)
  {
    inkCanvasAnnotation = [(AKPageModelController *)self inkCanvasAnnotation];

    if (inkCanvasAnnotation != objectCopy)
    {
      v6 = [MEMORY[0x277CBEB98] setWithObject:objectCopy];
      [(AKPageModelController *)self willChangeValueForKey:@"selectedAnnotations" withSetMutation:1 usingObjects:v6];
      [(NSMutableSet *)self->_mutableSelectedAnnotations addObject:objectCopy];
      [(AKPageModelController *)self didChangeValueForKey:@"selectedAnnotations" withSetMutation:1 usingObjects:v6];
      [(AKPageModelController *)self _postSelectedAnnotationsChangedNotification];
    }
  }
}

- (void)addSelectedAnnotations:(id)annotations
{
  v29 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  cropAnnotation = [(AKPageModelController *)self cropAnnotation];
  if (cropAnnotation)
  {
    v6 = cropAnnotation;
    cropAnnotation2 = [(AKPageModelController *)self cropAnnotation];
    v8 = [annotationsCopy containsObject:cropAnnotation2];

    if (v8)
    {
      v9 = [annotationsCopy mutableCopy];
      cropAnnotation3 = [(AKPageModelController *)self cropAnnotation];
      [v9 removeObject:cropAnnotation3];

      annotationsCopy = v9;
    }
  }

  inkCanvasAnnotation = [(AKPageModelController *)self inkCanvasAnnotation];
  if (inkCanvasAnnotation)
  {
    v12 = inkCanvasAnnotation;
    inkCanvasAnnotation2 = [(AKPageModelController *)self inkCanvasAnnotation];
    v14 = [annotationsCopy containsObject:inkCanvasAnnotation2];

    if (v14)
    {
      v15 = [annotationsCopy mutableCopy];
      inkCanvasAnnotation3 = [(AKPageModelController *)self inkCanvasAnnotation];
      [v15 removeObject:inkCanvasAnnotation3];

      annotationsCopy = v15;
    }
  }

  v17 = [(NSMutableOrderedSet *)self->_mutableAnnotations set];
  v18 = [annotationsCopy isSubsetOfSet:v17];

  if (v18)
  {
    [(AKPageModelController *)self willChangeValueForKey:@"selectedAnnotations" withSetMutation:1 usingObjects:annotationsCopy];
    [(NSMutableSet *)self->_mutableSelectedAnnotations unionSet:annotationsCopy];
    [(AKPageModelController *)self didChangeValueForKey:@"selectedAnnotations" withSetMutation:1 usingObjects:annotationsCopy];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = annotationsCopy;
    v20 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v25;
      do
      {
        v23 = 0;
        do
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [(AKPageModelController *)self addSelectedAnnotationsObject:*(*(&v24 + 1) + 8 * v23++), v24];
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v21);
    }
  }

  [(AKPageModelController *)self _postSelectedAnnotationsChangedNotification];
}

- (void)removeSelectedAnnotationsObject:(id)object
{
  v4 = MEMORY[0x277CBEB98];
  objectCopy = object;
  v6 = [v4 setWithObject:objectCopy];
  [(AKPageModelController *)self willChangeValueForKey:@"selectedAnnotations" withSetMutation:2 usingObjects:v6];
  [(NSMutableSet *)self->_mutableSelectedAnnotations removeObject:objectCopy];

  [(AKPageModelController *)self didChangeValueForKey:@"selectedAnnotations" withSetMutation:2 usingObjects:v6];
  [(AKPageModelController *)self _postSelectedAnnotationsChangedNotification];
}

- (void)removeSelectedAnnotations:(id)annotations
{
  v17 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  v5 = [(NSMutableOrderedSet *)self->_mutableAnnotations set];
  v6 = [annotationsCopy isSubsetOfSet:v5];

  if (v6)
  {
    [(AKPageModelController *)self willChangeValueForKey:@"selectedAnnotations" withSetMutation:2 usingObjects:annotationsCopy];
    [(NSMutableSet *)self->_mutableSelectedAnnotations minusSet:annotationsCopy];
    [(AKPageModelController *)self didChangeValueForKey:@"selectedAnnotations" withSetMutation:2 usingObjects:annotationsCopy];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = annotationsCopy;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(AKPageModelController *)self removeSelectedAnnotationsObject:*(*(&v12 + 1) + 8 * v11++), v12];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }

  [(AKPageModelController *)self _postSelectedAnnotationsChangedNotification];
}

- (void)intersectSelectedAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  [(AKPageModelController *)self willChangeValueForKey:@"selectedAnnotations" withSetMutation:3 usingObjects:annotationsCopy];
  [(NSMutableSet *)self->_mutableSelectedAnnotations intersectSet:annotationsCopy];
  [(AKPageModelController *)self didChangeValueForKey:@"selectedAnnotations" withSetMutation:3 usingObjects:annotationsCopy];

  [(AKPageModelController *)self _postSelectedAnnotationsChangedNotification];
}

- (void)setSelectedAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  inkCanvasAnnotation = [(AKPageModelController *)self inkCanvasAnnotation];
  cropAnnotation = [(AKPageModelController *)self cropAnnotation];
  if (inkCanvasAnnotation && ([annotationsCopy containsObject:inkCanvasAnnotation] & 1) != 0)
  {
    v6 = [annotationsCopy mutableCopy];
    [v6 removeObject:inkCanvasAnnotation];
    if (!cropAnnotation)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (cropAnnotation && [annotationsCopy containsObject:cropAnnotation])
  {
    v7 = [annotationsCopy mutableCopy];
    v6 = v7;
    if (inkCanvasAnnotation)
    {
      [v7 removeObject:inkCanvasAnnotation];
    }

LABEL_9:
    [v6 removeObject:cropAnnotation];
LABEL_10:

    v8 = v6;
    goto LABEL_12;
  }

  v8 = annotationsCopy;
LABEL_12:
  v10 = v8;
  [(AKPageModelController *)self willChangeValueForKey:@"selectedAnnotations" withSetMutation:4 usingObjects:v8];
  [(NSMutableSet *)self->_mutableSelectedAnnotations setSet:v10];
  [(AKPageModelController *)self didChangeValueForKey:@"selectedAnnotations" withSetMutation:4 usingObjects:v10];
  [(AKPageModelController *)self _postSelectedAnnotationsChangedNotification];
}

- (void)selectAnnotation:(id)annotation byExtendingSelection:(BOOL)selection
{
  selectionCopy = selection;
  annotationCopy = annotation;
  if (annotationCopy)
  {
    if (selectionCopy)
    {
      [(AKPageModelController *)self addSelectedAnnotationsObject:annotationCopy];
    }

    else
    {
      v7 = [MEMORY[0x277CBEB98] setWithObject:annotationCopy];
      [(AKPageModelController *)self setSelectedAnnotations:v7];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)selectAnnotationsAtIndexes:(id)indexes byExtendingSelection:(BOOL)selection
{
  selectionCopy = selection;
  v6 = MEMORY[0x277CBEB98];
  v7 = [(NSMutableOrderedSet *)self->_mutableAnnotations objectsAtIndexes:indexes];
  v8 = [v6 setWithArray:v7];

  if (selectionCopy)
  {
    [(AKPageModelController *)self addSelectedAnnotations:v8];
  }

  else
  {
    [(AKPageModelController *)self setSelectedAnnotations:v8];
  }
}

- (void)selectAllAnnotations
{
  v3 = MEMORY[0x277CBEB98];
  annotations = [(AKPageModelController *)self annotations];
  v4 = [v3 setWithArray:annotations];
  [(AKPageModelController *)self setSelectedAnnotations:v4];
}

- (void)bringSelectedAnnotationsForward
{
  annotations = [(AKPageModelController *)self annotations];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23F4B44C8;
  v15[3] = &unk_278C7BDA0;
  v15[4] = self;
  v4 = [annotations indexesOfObjectsPassingTest:v15];

  annotations2 = [(AKPageModelController *)self annotations];
  v6 = [annotations2 objectsAtIndexes:v4];

  v7 = [v4 lastIndex] + 1;
  annotations3 = [(AKPageModelController *)self annotations];
  v9 = [annotations3 count];

  if (v7 >= v9)
  {
    [(AKPageModelController *)self removeAnnotationsAtIndexes:v4];
    goto LABEL_5;
  }

  annotations4 = [(AKPageModelController *)self annotations];
  annotations5 = [annotations4 objectAtIndex:v7];

  [(AKPageModelController *)self removeAnnotationsAtIndexes:v4];
  if (!annotations5)
  {
LABEL_5:
    annotations5 = [(AKPageModelController *)self annotations];
    v13 = [annotations5 count];
    goto LABEL_6;
  }

  annotations6 = [(AKPageModelController *)self annotations];
  v13 = [annotations6 indexOfObject:annotations5] + 1;

LABEL_6:
  v14 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v13, objc_msgSend(v6, "count")}];
  [(AKPageModelController *)self insertAnnotations:v6 atIndexes:v14];
  [(AKPageModelController *)self selectAnnotationsAtIndexes:v14 byExtendingSelection:0];
}

- (void)bringSelectedAnnotationsToFront
{
  annotations = [(AKPageModelController *)self annotations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23F4B4660;
  v10[3] = &unk_278C7BDA0;
  v10[4] = self;
  v4 = [annotations indexesOfObjectsPassingTest:v10];

  annotations2 = [(AKPageModelController *)self annotations];
  v6 = [annotations2 objectsAtIndexes:v4];

  [(AKPageModelController *)self removeAnnotationsAtIndexes:v4];
  annotations3 = [(AKPageModelController *)self annotations];
  v8 = [annotations3 count];

  v9 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v8, objc_msgSend(v6, "count")}];
  [(AKPageModelController *)self insertAnnotations:v6 atIndexes:v9];
  [(AKPageModelController *)self selectAnnotationsAtIndexes:v9 byExtendingSelection:0];
}

- (void)sendSelectedAnnotationsBackward
{
  annotations = [(AKPageModelController *)self annotations];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23F4B4850;
  v14[3] = &unk_278C7BDA0;
  v14[4] = self;
  v4 = [annotations indexesOfObjectsPassingTest:v14];

  annotations2 = [(AKPageModelController *)self annotations];
  v6 = [annotations2 objectsAtIndexes:v4];

  firstIndex = [v4 firstIndex];
  if (firstIndex <= 0)
  {
    [(AKPageModelController *)self removeAnnotationsAtIndexes:v4];
    goto LABEL_5;
  }

  v8 = firstIndex - 1;
  annotations3 = [(AKPageModelController *)self annotations];
  v10 = [annotations3 objectAtIndex:v8];

  [(AKPageModelController *)self removeAnnotationsAtIndexes:v4];
  if (!v10)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  annotations4 = [(AKPageModelController *)self annotations];
  v12 = [annotations4 indexOfObject:v10];

LABEL_6:
  v13 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v12, objc_msgSend(v6, "count")}];
  [(AKPageModelController *)self insertAnnotations:v6 atIndexes:v13];
  [(AKPageModelController *)self selectAnnotationsAtIndexes:v13 byExtendingSelection:0];
}

- (void)sendSelectedAnnotationsToBack
{
  annotations = [(AKPageModelController *)self annotations];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23F4B49C4;
  v8[3] = &unk_278C7BDA0;
  v8[4] = self;
  v4 = [annotations indexesOfObjectsPassingTest:v8];

  annotations2 = [(AKPageModelController *)self annotations];
  v6 = [annotations2 objectsAtIndexes:v4];

  [(AKPageModelController *)self removeAnnotationsAtIndexes:v4];
  v7 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v6, "count")}];
  [(AKPageModelController *)self insertAnnotations:v6 atIndexes:v7];
  [(AKPageModelController *)self selectAnnotationsAtIndexes:v7 byExtendingSelection:0];
}

- (void)addCropToolAnnotation
{
  cropAnnotation = [(AKPageModelController *)self cropAnnotation];

  if (!cropAnnotation)
  {
    v5 = objc_alloc_init(AKCropAnnotation);
    [(AKPageModelController *)self setCropAnnotation:v5];
    [(AKCropAnnotation *)v5 setShowHandles:1];
    [(AKCropAnnotation *)v5 setRectangle:*MEMORY[0x277CBF390], *(MEMORY[0x277CBF390] + 8), *(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    [(AKAnnotation *)v5 setOriginalModelBaseScaleFactor:1.0];
    [(AKAnnotation *)v5 setOriginalExifOrientation:1];
    v4 = [(AKPageModelController *)self mutableArrayValueForKey:@"annotations"];
    [v4 addObject:v5];
  }
}

- (void)removeCropToolAnnotation
{
  cropAnnotation = [(AKPageModelController *)self cropAnnotation];

  if (cropAnnotation)
  {
    v4 = [(AKPageModelController *)self mutableArrayValueForKey:@"annotations"];
    cropAnnotation2 = [(AKPageModelController *)self cropAnnotation];
    [v4 removeObject:cropAnnotation2];

    [(AKPageModelController *)self setCropAnnotation:0];
  }
}

- (void)setInkCanvasAnnotation:(id)annotation
{
  annotationCopy = annotation;
  p_inkCanvasAnnotation = &self->_inkCanvasAnnotation;
  if (self->_inkCanvasAnnotation != annotationCopy)
  {
    v8 = annotationCopy;
    objc_storeStrong(p_inkCanvasAnnotation, annotation);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:off_27E39A388[0] object:self];

    annotationCopy = v8;
  }

  MEMORY[0x2821F96F8](p_inkCanvasAnnotation, annotationCopy);
}

- (void)setInkCanvasAnnotationOneTime:(id)time
{
  timeCopy = time;
  if (timeCopy)
  {
    inkCanvasAnnotation = [(AKPageModelController *)self mutableArrayValueForKey:@"annotations"];
    [inkCanvasAnnotation addObject:timeCopy];
  }

  else
  {
    inkCanvasAnnotation = [(AKPageModelController *)self inkCanvasAnnotation];
    if (inkCanvasAnnotation)
    {
      v5 = [(AKPageModelController *)self mutableArrayValueForKey:@"annotations"];
      [v5 removeObject:inkCanvasAnnotation];
    }
  }
}

- (BOOL)hasMaskBorderAnnotation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  annotations = [(AKPageModelController *)self annotations];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_23F4B4DA0;
  v4[3] = &unk_278C7BCC0;
  v4[4] = &v5;
  [annotations enumerateObjectsUsingBlock:v4];

  LOBYTE(annotations) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return annotations;
}

- (BOOL)hasHDRAnnotation
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  annotations = [(AKPageModelController *)self annotations];
  v3 = [annotations countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(annotations);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if (![v6 conformsToProtocol:&unk_2851D6300] || (objc_msgSend(v6, "strokeColorHDR"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
        {
          if (![v6 conformsToProtocol:&unk_2851D6420] || (objc_msgSend(v6, "fillColorHDR"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
          {
            if (![v6 conformsToProtocol:&unk_2851D6B08])
            {
              continue;
            }

            foregroundColorHDR = [v6 foregroundColorHDR];

            if (!foregroundColorHDR)
            {
              continue;
            }
          }
        }

        LOBYTE(v3) = 1;
        goto LABEL_16;
      }

      v3 = [annotations countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v3;
}

- (double)annotationHeadroom
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  annotations = [(AKPageModelController *)self annotations];
  v3 = [annotations countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 1.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(annotations);
        }

        [*(*(&v10 + 1) + 8 * i) desiredHeadroom];
        if (v6 < v8)
        {
          v6 = v8;
        }
      }

      v4 = [annotations countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (CGImage)renderAnnotationsOnImage:(CGImage *)image wantsHDR:(BOOL)r opaque:(BOOL)opaque withTransform:(CGAffineTransform *)transform shouldApplyCropRect:(BOOL)rect forPreview:(BOOL)preview
{
  v71 = *MEMORY[0x277D85DE8];
  if (image)
  {
    rectCopy = rect;
    opaqueCopy = opaque;
    rCopy = r;
    v62 = [(AKPageModelController *)self annotations:image];
    if (rCopy)
    {
      [(AKPageModelController *)self annotationHeadroom];
    }

    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    v16 = Width;
    v17 = Height;
    cropAnnotation = [(AKPageModelController *)self cropAnnotation];
    y = 0.0;
    if (rectCopy)
    {
      [(AKPageModelController *)self appliedCropRect];
      IsInfinite = CGRectIsInfinite(v72);
      v21 = IsInfinite;
      v61 = !IsInfinite;
      if (cropAnnotation || !IsInfinite)
      {
        if (cropAnnotation)
        {
          v22 = [v62 mutableCopy];
          [v22 removeObject:cropAnnotation];

          v62 = v22;
        }

        v23 = Height;
        v24 = Width;
        v25 = 0.0;
        if (!v21)
        {
          [(AKPageModelController *)self appliedCropRect];
          v25 = v26;
          y = v27;
          v24 = v28;
        }

        if (cropAnnotation)
        {
          [cropAnnotation rectangle];
          v25 = v25 + v29;
          [cropAnnotation rectangle];
          y = y + v30;
          [cropAnnotation rectangle];
          v24 = v31;
          [cropAnnotation rectangle];
        }

        v77.origin.x = 0.0;
        v77.origin.y = 0.0;
        v32 = v25;
        v33 = y;
        v34 = v24;
        v77.size.width = Width;
        v77.size.height = Height;
        v73 = CGRectIntersection(*(&v23 - 3), v77);
        x = v73.origin.x;
        y = v73.origin.y;
        v36 = v73.size.width;
        v37 = v73.size.height;
        Width = CGRectGetWidth(v73);
        v74.origin.x = x;
        v74.origin.y = y;
        v74.size.width = v36;
        v74.size.height = v37;
        Height = CGRectGetHeight(v74);
LABEL_17:
        ColorSpace = CGImageGetColorSpace(image);
        if (rCopy)
        {
          CGImageGetContentHeadroom();
          v40 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3F8]);
          v41 = v40;
          if (opaqueCopy)
          {
            v42 = 4357;
          }

          else
          {
            v42 = 4353;
          }

          v43 = 16;
          v44 = v40;
        }

        else
        {
          v44 = ColorSpace;
          if (ColorSpace && CGColorSpaceSupportsOutput(ColorSpace) && CGColorSpaceGetNumberOfComponents(v44) == 3)
          {
            v41 = 0;
          }

          else
          {
            v41 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
            v44 = v41;
          }

          if (opaqueCopy)
          {
            v42 = 8198;
          }

          else
          {
            v42 = 8194;
          }

          v43 = 8;
        }

        AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
        v46 = CGBitmapContextCreate(0, Width, Height, v43, AlignedBytesPerRow, v44, v42);
        if (v46)
        {
          v47 = v46;
          CGContextSetEDRTargetHeadroom();
          CGContextTranslateCTM(v47, -x, -y);
          v75.origin.x = 0.0;
          v75.origin.y = 0.0;
          v75.size.width = v16;
          v75.size.height = v17;
          CGContextDrawImage(v47, v75, image);
          CGContextSaveGState(v47);
          v48 = *&transform->c;
          v67 = *&transform->a;
          v68 = v48;
          v69 = *&transform->tx;
          CGContextSetCTM();
          if (v61)
          {
            [(AKPageModelController *)self appliedCropRect];
            CGContextTranslateCTM(v47, v49, v50);
          }

          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v51 = v62;
          v52 = [v51 countByEnumeratingWithState:&v63 objects:v70 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v64;
            do
            {
              for (i = 0; i != v53; ++i)
              {
                if (*v64 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                v56 = *(*(&v63 + 1) + 8 * i);
                v57 = objc_autoreleasePoolPush();
                CGContextSaveGState(v47);
                [v56 integralDrawingBounds];
                v58 = v76.origin.x;
                v59 = v76.origin.y;
                if (!CGRectIsInfinite(v76))
                {
                  CGContextTranslateCTM(v47, v58, v59);
                }

                [AKController renderAnnotation:v56 inContext:v47];
                CGContextRestoreGState(v47);
                objc_autoreleasePoolPop(v57);
              }

              v53 = [v51 countByEnumeratingWithState:&v63 objects:v70 count:16];
            }

            while (v53);
          }

          Image = CGBitmapContextCreateImage(v47);
          CGContextRestoreGState(v47);
          CGContextRelease(v47);
          if (!v41)
          {
            goto LABEL_45;
          }
        }

        else
        {
          NSLog(&cfstr_Cgbitmapcontex.isa);
          Image = CGImageRetain(image);
          if (!v41)
          {
            goto LABEL_45;
          }
        }

        CGColorSpaceRelease(v41);
LABEL_45:

        return Image;
      }
    }

    else
    {
      v61 = 0;
    }

    x = 0.0;
    goto LABEL_17;
  }

  return 0;
}

- (id)archivableRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  annotations = [(AKPageModelController *)self annotations];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(annotations, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  annotations2 = [(AKPageModelController *)self annotations];
  v7 = [annotations2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(annotations2);
        }

        dataRepresentation = [*(*(&v15 + 1) + 8 * i) dataRepresentation];
        [v5 addObject:dataRepresentation];
      }

      v8 = [annotations2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  v13 = [AKSecureSerializationHelper dataForSecureCodingCompliantObject:v12 withOptionalKey:0];

  return v13;
}

- (AKPageModelController)initWithArchivableRepresentation:(id)representation
{
  v24[3] = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = [(AKPageModelController *)self init];
  if (v5)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_23F4B58F8;
    v22 = sub_23F4B5908;
    v23 = 0;
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
    v7 = [AKSecureSerializationHelper secureCodingCompliantObjectForData:representationCopy ofClasses:v6 withOptionalKey:0];

    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = sub_23F4B5910;
    v15 = &unk_278C7C440;
    v9 = v8;
    v16 = v9;
    v17 = &v18;
    [v7 enumerateObjectsUsingBlock:&v12];
    v10 = [(AKPageModelController *)v5 mutableArrayValueForKey:@"annotations", v12, v13, v14, v15];
    [v10 addObjectsFromArray:v9];

    if (v19[5])
    {
      [(AKPageModelController *)v5 setCropAnnotation:?];
    }

    _Block_object_dispose(&v18, 8);
  }

  return v5;
}

- (id)selectionStateForUndo
{
  selectedAnnotations = [(AKPageModelController *)self selectedAnnotations];
  v3 = [selectedAnnotations copy];

  return v3;
}

- (void)restoreSelectionStateForUndo:(id)undo
{
  undoCopy = undo;
  v5 = [(AKPageModelController *)self mutableSetValueForKey:@"selectedAnnotations"];
  [v5 setSet:undoCopy];
}

- (void)_ensureInkAnnotationIsInFrontWhenEditsAreDone
{
  v6[1] = *MEMORY[0x277D85DE8];
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [currentRunLoop cancelPerformSelector:sel__coalescedEnsureInkAnnotationIsInFront_ target:self argument:0];

  currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
  v6[0] = *MEMORY[0x277CBE738];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [currentRunLoop2 performSelector:sel__coalescedEnsureInkAnnotationIsInFront_ target:self argument:0 order:349999 modes:v5];
}

- (void)_coalescedEnsureInkAnnotationIsInFront:(id)front
{
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [currentRunLoop cancelPerformSelector:sel__coalescedEnsureInkAnnotationIsInFront_ target:self argument:0];

  inkCanvasAnnotation = [(AKPageModelController *)self inkCanvasAnnotation];
  if (inkCanvasAnnotation)
  {
    v11 = inkCanvasAnnotation;
    v6 = [(AKPageModelController *)self mutableArrayValueForKey:@"annotations"];
    v7 = [v6 indexOfObject:v11];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      if (v7 != [v6 count] - 1)
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:off_27E39A390[0] object:0];

        [v6 removeObjectAtIndex:v8];
        [v6 addObject:v11];
        defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter2 postNotificationName:off_27E39A398 object:0];
      }
    }

    inkCanvasAnnotation = v11;
  }
}

- (void)_logAnnotationAdded:(id)added
{
  addedCopy = added;
  statisticsLogger = [(AKPageModelController *)self statisticsLogger];
  [statisticsLogger logAnnotationAdded:addedCopy];
}

- (void)_postSelectedAnnotationsChangedNotification
{
  v3 = [MEMORY[0x277CCAB88] notificationWithName:off_27E39A380[0] object:self];
  defaultQueue = [MEMORY[0x277CCABA0] defaultQueue];
  [defaultQueue enqueueNotification:v3 postingStyle:2 coalesceMask:1 forModes:0];
}

- (id)representedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_representedObject);

  return WeakRetained;
}

- (CGRect)appliedCropRect
{
  objc_copyStruct(v6, &self->_appliedCropRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (AKStatistics)statisticsLogger
{
  WeakRetained = objc_loadWeakRetained(&self->_statisticsLogger);

  return WeakRetained;
}

@end