@interface AKPageModelController
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
- (AKPageModelController)init;
- (AKPageModelController)initWithArchivableRepresentation:(id)a3;
- (AKStatistics)statisticsLogger;
- (BOOL)hasHDRAnnotation;
- (BOOL)hasMaskBorderAnnotation;
- (CGImage)renderAnnotationsOnImage:(CGImage *)a3 wantsHDR:(BOOL)a4 opaque:(BOOL)a5 withTransform:(CGAffineTransform *)a6 shouldApplyCropRect:(BOOL)a7 forPreview:(BOOL)a8;
- (CGRect)appliedCropRect;
- (double)annotationHeadroom;
- (id)archivableRepresentation;
- (id)representedObject;
- (id)selectionStateForUndo;
- (void)_coalescedEnsureInkAnnotationIsInFront:(id)a3;
- (void)_enableEditObservationForAnnotationIfNew:(id)a3;
- (void)_ensureInkAnnotationIsInFrontWhenEditsAreDone;
- (void)_logAnnotationAdded:(id)a3;
- (void)_postSelectedAnnotationsChangedNotification;
- (void)addCropToolAnnotation;
- (void)addSelectedAnnotations:(id)a3;
- (void)addSelectedAnnotationsObject:(id)a3;
- (void)bringSelectedAnnotationsForward;
- (void)bringSelectedAnnotationsToFront;
- (void)insertAnnotations:(id)a3 atIndexes:(id)a4;
- (void)insertObject:(id)a3 inAnnotationsAtIndex:(unint64_t)a4;
- (void)intersectSelectedAnnotations:(id)a3;
- (void)removeAllAnnotations;
- (void)removeAnnotationsAtIndexes:(id)a3;
- (void)removeCropToolAnnotation;
- (void)removeObjectFromAnnotationsAtIndex:(unint64_t)a3;
- (void)removeSelectedAnnotations:(id)a3;
- (void)removeSelectedAnnotationsObject:(id)a3;
- (void)replaceAnnotationsAtIndexes:(id)a3 withAnnotations:(id)a4;
- (void)replaceObjectInAnnotationsAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)restoreSelectionStateForUndo:(id)a3;
- (void)selectAllAnnotations;
- (void)selectAnnotation:(id)a3 byExtendingSelection:(BOOL)a4;
- (void)selectAnnotationsAtIndexes:(id)a3 byExtendingSelection:(BOOL)a4;
- (void)sendSelectedAnnotationsBackward;
- (void)sendSelectedAnnotationsToBack;
- (void)setInkCanvasAnnotation:(id)a3;
- (void)setInkCanvasAnnotationOneTime:(id)a3;
- (void)setSelectedAnnotations:(id)a3;
@end

@implementation AKPageModelController

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___AKPageModelController;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, v3);
  v5 = [v3 isEqualToString:{@"selectedAnnotations", v7.receiver, v7.super_class}];

  return (v5 ^ 1) & v4;
}

- (AKPageModelController)init
{
  v9.receiver = self;
  v9.super_class = AKPageModelController;
  v2 = [(AKPageModelController *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB40] orderedSet];
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = *(MEMORY[0x277CBF390] + 16);
    *(v2 + 56) = *MEMORY[0x277CBF390];
    *(v2 + 72) = v7;
  }

  return v2;
}

- (void)insertObject:(id)a3 inAnnotationsAtIndex:(unint64_t)a4
{
  v7 = a3;
  if (([(NSMutableOrderedSet *)self->_mutableAnnotations containsObject:?]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_mutableAnnotations insertObject:v7 atIndex:a4];
    [(AKPageModelController *)self _ensureInkAnnotationIsInFrontWhenEditsAreDone];
    v6 = [(AKPageModelController *)self inkCanvasAnnotation];

    if (!v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(AKPageModelController *)self setInkCanvasAnnotation:v7];
      }
    }

    [(AKPageModelController *)self _enableEditObservationForAnnotationIfNew:v7];
    [(AKPageModelController *)self _logAnnotationAdded:v7];
  }
}

- (void)insertAnnotations:(id)a3 atIndexes:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  mutableAnnotations = self->_mutableAnnotations;
  v9 = [MEMORY[0x277CBEB98] setWithArray:v6];
  LOBYTE(mutableAnnotations) = [(NSMutableOrderedSet *)mutableAnnotations intersectsSet:v9];

  if (mutableAnnotations)
  {
    v10 = [v7 firstIndex];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v6;
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

          [(AKPageModelController *)self insertObject:*(*(&v23 + 1) + 8 * i) inAnnotationsAtIndex:v10, v23];
          v10 = [v7 indexGreaterThanIndex:v10];
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v13);
    }
  }

  else
  {
    [(NSMutableOrderedSet *)self->_mutableAnnotations insertObjects:v6 atIndexes:v7];
    [(AKPageModelController *)self _ensureInkAnnotationIsInFrontWhenEditsAreDone];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v6;
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
          v22 = [(AKPageModelController *)self inkCanvasAnnotation];

          if (!v22)
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

- (void)_enableEditObservationForAnnotationIfNew:(id)a3
{
  v3 = a3;
  if ((sub_23F4ABA3C() & 1) == 0 && ([v3 isEdited] & 1) == 0 && (objc_msgSend(v3, "shouldObserveEdits") & 1) == 0)
  {
    [v3 setShouldObserveEdits:1];
  }
}

- (void)removeAllAnnotations
{
  v3 = MEMORY[0x277CCAA78];
  v4 = [(AKPageModelController *)self annotations];
  v5 = [v3 indexSetWithIndexesInRange:{0, objc_msgSend(v4, "count")}];

  [(AKPageModelController *)self removeAnnotationsAtIndexes:v5];
}

- (void)removeObjectFromAnnotationsAtIndex:(unint64_t)a3
{
  if ([(NSMutableOrderedSet *)self->_mutableAnnotations count]> a3)
  {
    v6 = [(NSMutableOrderedSet *)self->_mutableAnnotations objectAtIndex:a3];
    if ([(NSMutableSet *)self->_mutableSelectedAnnotations containsObject:?])
    {
      [(AKPageModelController *)self removeSelectedAnnotationsObject:v6];
    }

    [v6 setShouldObserveEdits:0];
    v5 = [(AKPageModelController *)self inkCanvasAnnotation];

    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(AKPageModelController *)self setInkCanvasAnnotation:0];
      }
    }

    [(NSMutableOrderedSet *)self->_mutableAnnotations removeObjectAtIndex:a3];
  }
}

- (void)removeAnnotationsAtIndexes:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableOrderedSet *)self->_mutableAnnotations objectsAtIndexes:v4];
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
        v14 = [(AKPageModelController *)self inkCanvasAnnotation];

        if (v14)
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

  [(NSMutableOrderedSet *)self->_mutableAnnotations removeObjectsAtIndexes:v4];
}

- (void)replaceObjectInAnnotationsAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v7 = a4;
  v6 = [(NSMutableOrderedSet *)self->_mutableAnnotations objectAtIndex:a3];
  if ([(NSMutableSet *)self->_mutableSelectedAnnotations containsObject:v6])
  {
    [(AKPageModelController *)self removeSelectedAnnotationsObject:v6];
  }

  [v6 setShouldObserveEdits:0];
  [(NSMutableOrderedSet *)self->_mutableAnnotations replaceObjectAtIndex:a3 withObject:v7];
  [(AKPageModelController *)self _ensureInkAnnotationIsInFrontWhenEditsAreDone];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AKPageModelController *)self setInkCanvasAnnotation:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AKPageModelController *)self setInkCanvasAnnotation:v7];
  }

  [(AKPageModelController *)self _enableEditObservationForAnnotationIfNew:v7];
}

- (void)replaceAnnotationsAtIndexes:(id)a3 withAnnotations:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  mutableAnnotations = self->_mutableAnnotations;
  v9 = [MEMORY[0x277CBEB98] setWithArray:v7];
  LOBYTE(mutableAnnotations) = [(NSMutableOrderedSet *)mutableAnnotations intersectsSet:v9];

  if (mutableAnnotations)
  {
    v10 = [v6 firstIndex];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v7;
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

          [(AKPageModelController *)self replaceObjectInAnnotationsAtIndex:v10 withObject:*(*(&v29 + 1) + 8 * i), v29];
          v10 = [v6 indexGreaterThanIndex:v10];
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEB98];
    v17 = [(NSMutableOrderedSet *)self->_mutableAnnotations objectsAtIndexes:v6];
    v11 = [v16 setWithArray:v17];

    if ([(NSMutableSet *)self->_mutableSelectedAnnotations intersectsSet:v11])
    {
      [(AKPageModelController *)self removeSelectedAnnotations:v11];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = [v11 allObjects];
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v43 count:16];
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
            objc_enumerationMutation(v18);
          }

          [*(*(&v37 + 1) + 8 * j) setShouldObserveEdits:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(AKPageModelController *)self setInkCanvasAnnotation:0];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v20);
    }

    [(NSMutableOrderedSet *)self->_mutableAnnotations replaceObjectsAtIndexes:v6 withObjects:v7];
    [(AKPageModelController *)self _ensureInkAnnotationIsInFrontWhenEditsAreDone];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = v7;
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

- (void)addSelectedAnnotationsObject:(id)a3
{
  v7 = a3;
  v4 = [(AKPageModelController *)self cropAnnotation];

  if (v4 != v7)
  {
    v5 = [(AKPageModelController *)self inkCanvasAnnotation];

    if (v5 != v7)
    {
      v6 = [MEMORY[0x277CBEB98] setWithObject:v7];
      [(AKPageModelController *)self willChangeValueForKey:@"selectedAnnotations" withSetMutation:1 usingObjects:v6];
      [(NSMutableSet *)self->_mutableSelectedAnnotations addObject:v7];
      [(AKPageModelController *)self didChangeValueForKey:@"selectedAnnotations" withSetMutation:1 usingObjects:v6];
      [(AKPageModelController *)self _postSelectedAnnotationsChangedNotification];
    }
  }
}

- (void)addSelectedAnnotations:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AKPageModelController *)self cropAnnotation];
  if (v5)
  {
    v6 = v5;
    v7 = [(AKPageModelController *)self cropAnnotation];
    v8 = [v4 containsObject:v7];

    if (v8)
    {
      v9 = [v4 mutableCopy];
      v10 = [(AKPageModelController *)self cropAnnotation];
      [v9 removeObject:v10];

      v4 = v9;
    }
  }

  v11 = [(AKPageModelController *)self inkCanvasAnnotation];
  if (v11)
  {
    v12 = v11;
    v13 = [(AKPageModelController *)self inkCanvasAnnotation];
    v14 = [v4 containsObject:v13];

    if (v14)
    {
      v15 = [v4 mutableCopy];
      v16 = [(AKPageModelController *)self inkCanvasAnnotation];
      [v15 removeObject:v16];

      v4 = v15;
    }
  }

  v17 = [(NSMutableOrderedSet *)self->_mutableAnnotations set];
  v18 = [v4 isSubsetOfSet:v17];

  if (v18)
  {
    [(AKPageModelController *)self willChangeValueForKey:@"selectedAnnotations" withSetMutation:1 usingObjects:v4];
    [(NSMutableSet *)self->_mutableSelectedAnnotations unionSet:v4];
    [(AKPageModelController *)self didChangeValueForKey:@"selectedAnnotations" withSetMutation:1 usingObjects:v4];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = v4;
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

- (void)removeSelectedAnnotationsObject:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 setWithObject:v5];
  [(AKPageModelController *)self willChangeValueForKey:@"selectedAnnotations" withSetMutation:2 usingObjects:v6];
  [(NSMutableSet *)self->_mutableSelectedAnnotations removeObject:v5];

  [(AKPageModelController *)self didChangeValueForKey:@"selectedAnnotations" withSetMutation:2 usingObjects:v6];
  [(AKPageModelController *)self _postSelectedAnnotationsChangedNotification];
}

- (void)removeSelectedAnnotations:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableOrderedSet *)self->_mutableAnnotations set];
  v6 = [v4 isSubsetOfSet:v5];

  if (v6)
  {
    [(AKPageModelController *)self willChangeValueForKey:@"selectedAnnotations" withSetMutation:2 usingObjects:v4];
    [(NSMutableSet *)self->_mutableSelectedAnnotations minusSet:v4];
    [(AKPageModelController *)self didChangeValueForKey:@"selectedAnnotations" withSetMutation:2 usingObjects:v4];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v4;
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

- (void)intersectSelectedAnnotations:(id)a3
{
  v4 = a3;
  [(AKPageModelController *)self willChangeValueForKey:@"selectedAnnotations" withSetMutation:3 usingObjects:v4];
  [(NSMutableSet *)self->_mutableSelectedAnnotations intersectSet:v4];
  [(AKPageModelController *)self didChangeValueForKey:@"selectedAnnotations" withSetMutation:3 usingObjects:v4];

  [(AKPageModelController *)self _postSelectedAnnotationsChangedNotification];
}

- (void)setSelectedAnnotations:(id)a3
{
  v9 = a3;
  v4 = [(AKPageModelController *)self inkCanvasAnnotation];
  v5 = [(AKPageModelController *)self cropAnnotation];
  if (v4 && ([v9 containsObject:v4] & 1) != 0)
  {
    v6 = [v9 mutableCopy];
    [v6 removeObject:v4];
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v5 && [v9 containsObject:v5])
  {
    v7 = [v9 mutableCopy];
    v6 = v7;
    if (v4)
    {
      [v7 removeObject:v4];
    }

LABEL_9:
    [v6 removeObject:v5];
LABEL_10:

    v8 = v6;
    goto LABEL_12;
  }

  v8 = v9;
LABEL_12:
  v10 = v8;
  [(AKPageModelController *)self willChangeValueForKey:@"selectedAnnotations" withSetMutation:4 usingObjects:v8];
  [(NSMutableSet *)self->_mutableSelectedAnnotations setSet:v10];
  [(AKPageModelController *)self didChangeValueForKey:@"selectedAnnotations" withSetMutation:4 usingObjects:v10];
  [(AKPageModelController *)self _postSelectedAnnotationsChangedNotification];
}

- (void)selectAnnotation:(id)a3 byExtendingSelection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    if (v4)
    {
      [(AKPageModelController *)self addSelectedAnnotationsObject:v6];
    }

    else
    {
      v7 = [MEMORY[0x277CBEB98] setWithObject:v6];
      [(AKPageModelController *)self setSelectedAnnotations:v7];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)selectAnnotationsAtIndexes:(id)a3 byExtendingSelection:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x277CBEB98];
  v7 = [(NSMutableOrderedSet *)self->_mutableAnnotations objectsAtIndexes:a3];
  v8 = [v6 setWithArray:v7];

  if (v4)
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
  v5 = [(AKPageModelController *)self annotations];
  v4 = [v3 setWithArray:v5];
  [(AKPageModelController *)self setSelectedAnnotations:v4];
}

- (void)bringSelectedAnnotationsForward
{
  v3 = [(AKPageModelController *)self annotations];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23F4B44C8;
  v15[3] = &unk_278C7BDA0;
  v15[4] = self;
  v4 = [v3 indexesOfObjectsPassingTest:v15];

  v5 = [(AKPageModelController *)self annotations];
  v6 = [v5 objectsAtIndexes:v4];

  v7 = [v4 lastIndex] + 1;
  v8 = [(AKPageModelController *)self annotations];
  v9 = [v8 count];

  if (v7 >= v9)
  {
    [(AKPageModelController *)self removeAnnotationsAtIndexes:v4];
    goto LABEL_5;
  }

  v10 = [(AKPageModelController *)self annotations];
  v11 = [v10 objectAtIndex:v7];

  [(AKPageModelController *)self removeAnnotationsAtIndexes:v4];
  if (!v11)
  {
LABEL_5:
    v11 = [(AKPageModelController *)self annotations];
    v13 = [v11 count];
    goto LABEL_6;
  }

  v12 = [(AKPageModelController *)self annotations];
  v13 = [v12 indexOfObject:v11] + 1;

LABEL_6:
  v14 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v13, objc_msgSend(v6, "count")}];
  [(AKPageModelController *)self insertAnnotations:v6 atIndexes:v14];
  [(AKPageModelController *)self selectAnnotationsAtIndexes:v14 byExtendingSelection:0];
}

- (void)bringSelectedAnnotationsToFront
{
  v3 = [(AKPageModelController *)self annotations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23F4B4660;
  v10[3] = &unk_278C7BDA0;
  v10[4] = self;
  v4 = [v3 indexesOfObjectsPassingTest:v10];

  v5 = [(AKPageModelController *)self annotations];
  v6 = [v5 objectsAtIndexes:v4];

  [(AKPageModelController *)self removeAnnotationsAtIndexes:v4];
  v7 = [(AKPageModelController *)self annotations];
  v8 = [v7 count];

  v9 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v8, objc_msgSend(v6, "count")}];
  [(AKPageModelController *)self insertAnnotations:v6 atIndexes:v9];
  [(AKPageModelController *)self selectAnnotationsAtIndexes:v9 byExtendingSelection:0];
}

- (void)sendSelectedAnnotationsBackward
{
  v3 = [(AKPageModelController *)self annotations];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23F4B4850;
  v14[3] = &unk_278C7BDA0;
  v14[4] = self;
  v4 = [v3 indexesOfObjectsPassingTest:v14];

  v5 = [(AKPageModelController *)self annotations];
  v6 = [v5 objectsAtIndexes:v4];

  v7 = [v4 firstIndex];
  if (v7 <= 0)
  {
    [(AKPageModelController *)self removeAnnotationsAtIndexes:v4];
    goto LABEL_5;
  }

  v8 = v7 - 1;
  v9 = [(AKPageModelController *)self annotations];
  v10 = [v9 objectAtIndex:v8];

  [(AKPageModelController *)self removeAnnotationsAtIndexes:v4];
  if (!v10)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = [(AKPageModelController *)self annotations];
  v12 = [v11 indexOfObject:v10];

LABEL_6:
  v13 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v12, objc_msgSend(v6, "count")}];
  [(AKPageModelController *)self insertAnnotations:v6 atIndexes:v13];
  [(AKPageModelController *)self selectAnnotationsAtIndexes:v13 byExtendingSelection:0];
}

- (void)sendSelectedAnnotationsToBack
{
  v3 = [(AKPageModelController *)self annotations];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23F4B49C4;
  v8[3] = &unk_278C7BDA0;
  v8[4] = self;
  v4 = [v3 indexesOfObjectsPassingTest:v8];

  v5 = [(AKPageModelController *)self annotations];
  v6 = [v5 objectsAtIndexes:v4];

  [(AKPageModelController *)self removeAnnotationsAtIndexes:v4];
  v7 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v6, "count")}];
  [(AKPageModelController *)self insertAnnotations:v6 atIndexes:v7];
  [(AKPageModelController *)self selectAnnotationsAtIndexes:v7 byExtendingSelection:0];
}

- (void)addCropToolAnnotation
{
  v3 = [(AKPageModelController *)self cropAnnotation];

  if (!v3)
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
  v3 = [(AKPageModelController *)self cropAnnotation];

  if (v3)
  {
    v4 = [(AKPageModelController *)self mutableArrayValueForKey:@"annotations"];
    v5 = [(AKPageModelController *)self cropAnnotation];
    [v4 removeObject:v5];

    [(AKPageModelController *)self setCropAnnotation:0];
  }
}

- (void)setInkCanvasAnnotation:(id)a3
{
  v5 = a3;
  p_inkCanvasAnnotation = &self->_inkCanvasAnnotation;
  if (self->_inkCanvasAnnotation != v5)
  {
    v8 = v5;
    objc_storeStrong(p_inkCanvasAnnotation, a3);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:off_27E39A388[0] object:self];

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_inkCanvasAnnotation, v5);
}

- (void)setInkCanvasAnnotationOneTime:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(AKPageModelController *)self mutableArrayValueForKey:@"annotations"];
    [v4 addObject:v6];
  }

  else
  {
    v4 = [(AKPageModelController *)self inkCanvasAnnotation];
    if (v4)
    {
      v5 = [(AKPageModelController *)self mutableArrayValueForKey:@"annotations"];
      [v5 removeObject:v4];
    }
  }
}

- (BOOL)hasMaskBorderAnnotation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(AKPageModelController *)self annotations];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_23F4B4DA0;
  v4[3] = &unk_278C7BCC0;
  v4[4] = &v5;
  [v2 enumerateObjectsUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)hasHDRAnnotation
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(AKPageModelController *)self annotations];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
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

            v9 = [v6 foregroundColorHDR];

            if (!v9)
            {
              continue;
            }
          }
        }

        LOBYTE(v3) = 1;
        goto LABEL_16;
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v2 = [(AKPageModelController *)self annotations];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) desiredHeadroom];
        if (v6 < v8)
        {
          v6 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (CGImage)renderAnnotationsOnImage:(CGImage *)a3 wantsHDR:(BOOL)a4 opaque:(BOOL)a5 withTransform:(CGAffineTransform *)a6 shouldApplyCropRect:(BOOL)a7 forPreview:(BOOL)a8
{
  v71 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = a7;
    v10 = a5;
    v11 = a4;
    v62 = [(AKPageModelController *)self annotations:a3];
    if (v11)
    {
      [(AKPageModelController *)self annotationHeadroom];
    }

    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(a3);
    v16 = Width;
    v17 = Height;
    v18 = [(AKPageModelController *)self cropAnnotation];
    y = 0.0;
    if (v8)
    {
      [(AKPageModelController *)self appliedCropRect];
      IsInfinite = CGRectIsInfinite(v72);
      v21 = IsInfinite;
      v61 = !IsInfinite;
      if (v18 || !IsInfinite)
      {
        if (v18)
        {
          v22 = [v62 mutableCopy];
          [v22 removeObject:v18];

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

        if (v18)
        {
          [v18 rectangle];
          v25 = v25 + v29;
          [v18 rectangle];
          y = y + v30;
          [v18 rectangle];
          v24 = v31;
          [v18 rectangle];
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
        ColorSpace = CGImageGetColorSpace(a3);
        if (v11)
        {
          CGImageGetContentHeadroom();
          v40 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3F8]);
          v41 = v40;
          if (v10)
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

          if (v10)
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
          CGContextDrawImage(v47, v75, a3);
          CGContextSaveGState(v47);
          v48 = *&a6->c;
          v67 = *&a6->a;
          v68 = v48;
          v69 = *&a6->tx;
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
          Image = CGImageRetain(a3);
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
  v4 = [(AKPageModelController *)self annotations];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(AKPageModelController *)self annotations];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) dataRepresentation];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  v13 = [AKSecureSerializationHelper dataForSecureCodingCompliantObject:v12 withOptionalKey:0];

  return v13;
}

- (AKPageModelController)initWithArchivableRepresentation:(id)a3
{
  v24[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v7 = [AKSecureSerializationHelper secureCodingCompliantObjectForData:v4 ofClasses:v6 withOptionalKey:0];

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
  v2 = [(AKPageModelController *)self selectedAnnotations];
  v3 = [v2 copy];

  return v3;
}

- (void)restoreSelectionStateForUndo:(id)a3
{
  v4 = a3;
  v5 = [(AKPageModelController *)self mutableSetValueForKey:@"selectedAnnotations"];
  [v5 setSet:v4];
}

- (void)_ensureInkAnnotationIsInFrontWhenEditsAreDone
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v3 cancelPerformSelector:sel__coalescedEnsureInkAnnotationIsInFront_ target:self argument:0];

  v4 = [MEMORY[0x277CBEB88] currentRunLoop];
  v6[0] = *MEMORY[0x277CBE738];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v4 performSelector:sel__coalescedEnsureInkAnnotationIsInFront_ target:self argument:0 order:349999 modes:v5];
}

- (void)_coalescedEnsureInkAnnotationIsInFront:(id)a3
{
  v4 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v4 cancelPerformSelector:sel__coalescedEnsureInkAnnotationIsInFront_ target:self argument:0];

  v5 = [(AKPageModelController *)self inkCanvasAnnotation];
  if (v5)
  {
    v11 = v5;
    v6 = [(AKPageModelController *)self mutableArrayValueForKey:@"annotations"];
    v7 = [v6 indexOfObject:v11];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      if (v7 != [v6 count] - 1)
      {
        v9 = [MEMORY[0x277CCAB98] defaultCenter];
        [v9 postNotificationName:off_27E39A390[0] object:0];

        [v6 removeObjectAtIndex:v8];
        [v6 addObject:v11];
        v10 = [MEMORY[0x277CCAB98] defaultCenter];
        [v10 postNotificationName:off_27E39A398 object:0];
      }
    }

    v5 = v11;
  }
}

- (void)_logAnnotationAdded:(id)a3
{
  v4 = a3;
  v5 = [(AKPageModelController *)self statisticsLogger];
  [v5 logAnnotationAdded:v4];
}

- (void)_postSelectedAnnotationsChangedNotification
{
  v3 = [MEMORY[0x277CCAB88] notificationWithName:off_27E39A380[0] object:self];
  v2 = [MEMORY[0x277CCABA0] defaultQueue];
  [v2 enqueueNotification:v3 postingStyle:2 coalesceMask:1 forModes:0];
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