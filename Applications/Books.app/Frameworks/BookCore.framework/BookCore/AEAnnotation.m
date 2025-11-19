@interface AEAnnotation
+ (BOOL)isBKBookmarkCreatorIdentifier:(id)a3;
+ (BOOL)isSelectedTextRepeatedInRepresentativeTextForAnnotation:(id)a3;
+ (BOOL)isValidForDeserialization:(id)a3;
+ (BOOL)mergeAnnotation:(id)a3 withServerAnnotation:(id)a4 moc:(id)a5;
+ (BOOL)mergeServerAnnotations:(id)a3 forAssetID:(id)a4 intoMoc:(id)a5;
+ (id)_dictionaryRepresentationForAnnotationsMatchingPredicate:(id)a3 map:(id)a4 inManagedObjectContext:(id)a5;
+ (id)aeAnnotationDictionaryRepresentationsForAnnotations:(id)a3;
+ (id)annotatedAttributedStringForAnnotation:(id)a3;
+ (id)annotatedAttributedStringForAnnotation:(id)a3 withPossibleLength:(unint64_t)a4;
+ (id)annotatedAttributedStringWithString:(id)a3 annotationStyle:(int)a4 range:(_NSRange)a5;
+ (id)annotationAssetIDFromDictionaryRepresentation:(id)a3;
+ (id)annotationCreatorIdentifierFromDictionaryRepresentation:(id)a3;
+ (id)annotationIncludingDeletedWithUUID:(id)a3 assetID:(id)a4 inManagedObjectContext:(id)a5;
+ (id)annotationUuidFromDictionaryRepresentation:(id)a3;
+ (id)annotationsForAssetID:(id)a3 includingDeleted:(BOOL)a4 inManagedObjectContext:(id)a5;
+ (id)annotationsIncludingDeletedWithUUIDInList:(id)a3 assetID:(id)a4 inManagedObjectContext:(id)a5;
+ (id)annotationsWithAssetIDInList:(id)a3 includingDeleted:(BOOL)a4 inManagedObjectContext:(id)a5;
+ (id)bookmarkColorFromAnnotationStyle:(int)a3;
+ (id)bookmarkTypeFromAnnotationType:(int)a3;
+ (id)clauseForSelectedTextForAnnotation:(id)a3 inSentence:(id)a4 possibleLength:(unint64_t)a5 highlightedRange:(_NSRange *)a6;
+ (id)compatibleDictionaryRepresentationForAnnotationsMatchingPredicate:(id)a3 inManagedObjectContext:(id)a4;
+ (id)contextAwareSelectedTextFromAnnotation:(id)a3;
+ (id)deletedFlagFromDictionaryRepresentation:(id)a3;
+ (id)dictionaryRepresentationsForAnnotations:(id)a3;
+ (id)dictionaryResultsForAnnotationsWithPredicate:(id)a3 properties:(id)a4 propertyNamesMap:(id)a5 inManagedObjectContext:(id)a6;
+ (id)dictionaryResultsForAssetsWithPredicate:(id)a3 properties:(id)a4 inManagedObjectContext:(id)a5;
+ (id)globalAnnotationForAssetID:(id)a3 inManagedObjectContext:(id)a4;
+ (id)globalAnnotationTypeValues;
+ (id)insertAnnotationWithAssetID:(id)a3 creatorIdentifier:(id)a4 annotationUuid:(id)a5 intoManagedObjectContext:(id)a6;
+ (id)lastModificationFromDictionaryRepresentation:(id)a3;
+ (id)lettersForSelectedTextForAnnotation:(id)a3 inSentence:(id)a4 possibleLength:(unint64_t)a5 highlightedRange:(_NSRange *)a6;
+ (id)maxAnnotationVersionForAssetsWithPredicate:(id)a3 inManagedObjectContext:(id)a4;
+ (id)maxExpressionDescriptionForProperty:(id)a3 expressionName:(id)a4;
+ (id)maxModificationDateExpressionDescription;
+ (id)maxModificationDateForAllAnnotationsInManagedObjectContext:(id)a3;
+ (id)maxModificationDateForAssetsWithPredicate:(id)a3 inManagedObjectContext:(id)a4;
+ (id)maxUserModificationDateExpressionDescription;
+ (id)optimizedRepresentativeTextForSerialization:(id)a3 selectedText:(id)a4;
+ (id)optimizedSelectedTextForSerialization:(id)a3;
+ (id)predicateForAnnotationIncludingDeletedWithUUID:(id)a3 assetID:(id)a4;
+ (id)predicateForAnnotationsIncludingDeletedWithUUIDInList:(id)a3 assetID:(id)a4;
+ (id)predicateForUserAnnotationsWithAssetID:(id)a3 includingDeleted:(BOOL)a4;
+ (id)predicateForUserAnnotationsWithAssetIDInList:(id)a3 includingDeleted:(BOOL)a4;
+ (id)userAnnotationTypeValues;
+ (id)wordsForSelectedTextForAnnotation:(id)a3 inSentence:(id)a4 possibleLength:(unint64_t)a5 highlightedRange:(_NSRange *)a6;
+ (int)annotationStyleFromBookmarkColor:(id)a3;
+ (int)annotationTypeFromBookmarkType:(id)a3;
+ (int)annotationTypeFromDictionaryRepresentation:(id)a3;
- (AEAnnotationManagedObjectContext)managedObjectContext;
- (BOOL)annotationDeleted;
- (BOOL)annotationHasNote;
- (BOOL)annotationIsBookmark;
- (BOOL)annotationIsUnderline;
- (BOOL)avoidSync;
- (BOOL)bumpAnnotationVersionToMinimumVersion:(id)a3;
- (BOOL)hasReadingProgress;
- (BOOL)hasReadingProgressHighWaterMark;
- (BOOL)isValidForSerialization;
- (BOOL)spineIndexUpdated;
- (BOOL)updateReadingProgressAndBumpHighWaterMarkToProgress:(float)a3;
- (BOOL)usesLegacySerializationMethod;
- (BOOL)validateConsistency:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (NSDate)locationModificationDate;
- (NSDate)userModificationDate;
- (NSNumber)annotationStyleNumber;
- (NSNumber)annotationTypeNumber;
- (NSString)description;
- (NSString)redactedAnnotationLocation;
- (_NSRange)annotationSelectedTextRange;
- (float)readingProgress;
- (float)readingProgressHighWaterMark;
- (id)aeAnnotationDictionaryRepresentation;
- (id)bkBookmarkDeserializeLocationDataFromDictionary:(id)a3 trustedSource:(BOOL)a4;
- (id)doesSerializeAs_iBooks;
- (id)iBooks_dictionaryRepresentation;
- (id)validateAnnotationUuid;
- (int)annotationStyle;
- (int)annotationType;
- (void)aeAnnotationDeserializeFromDictionary:(id)a3 trustedSource:(BOOL)a4;
- (void)awakeFromInsert;
- (void)clearAvoidSync;
- (void)deserializeFromDictionary:(id)a3 trustedSource:(BOOL)a4;
- (void)iBooks_deserializeFromDictionary:(id)a3 trustedSource:(BOOL)a4;
- (void)setAnnotationCreationDate:(id)a3;
- (void)setAnnotationDeleted:(BOOL)a3;
- (void)setAnnotationIsUnderline:(BOOL)a3;
- (void)setAnnotationLocation:(id)a3;
- (void)setAnnotationNote:(id)a3;
- (void)setAnnotationRepresentativeText:(id)a3;
- (void)setAnnotationSelectedText:(id)a3;
- (void)setAnnotationSelectedTextRange:(_NSRange)a3;
- (void)setAnnotationStyle:(int)a3;
- (void)setAnnotationType:(int)a3;
- (void)setAnnotationVersion:(id)a3;
- (void)setAssetVersion:(id)a3;
- (void)setAttachments:(id)a3;
- (void)setAvoidSync;
- (void)setChapterTitle:(id)a3;
- (void)setFutureProofing10:(id)a3;
- (void)setFutureProofing11:(id)a3;
- (void)setFutureProofing12:(id)a3;
- (void)setFutureProofing1:(id)a3;
- (void)setFutureProofing2:(id)a3;
- (void)setFutureProofing3:(id)a3;
- (void)setFutureProofing4:(id)a3;
- (void)setFutureProofing5:(id)a3;
- (void)setFutureProofing6:(id)a3;
- (void)setFutureProofing7:(id)a3;
- (void)setFutureProofing8:(id)a3;
- (void)setFutureProofing9:(id)a3;
- (void)setLocationModificationDate:(id)a3;
- (void)setPhysicalPageNumber:(id)a3;
- (void)setPlAbsolutePhysicalLocation:(id)a3;
- (void)setPlLocationRangeEnd:(id)a3;
- (void)setPlLocationRangeStart:(id)a3;
- (void)setPlStorageUUID:(id)a3;
- (void)setPlUserData:(id)a3;
- (void)setReadingProgress:(float)a3;
- (void)setReadingProgressHighWaterMark:(float)a3;
- (void)setSpineIndexUpdated:(BOOL)a3;
- (void)setUserModificationDate:(id)a3;
- (void)updateSystemAndLocationModificationDates;
- (void)updateSystemAndUserModificationDates;
- (void)updateSystemModificationDate;
- (void)updateUserModificationDate;
@end

@implementation AEAnnotation

- (void)awakeFromInsert
{
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 awakeFromInsert];
  v3 = [[NSNumber alloc] initWithInt:2];
  [(AEAnnotation *)self setPrimitiveValue:v3 forKey:@"annotationType"];
  v4 = +[NSDate date];
  [(AEAnnotation *)self setPrimitiveValue:v4 forKey:@"annotationCreationDate"];
  [(AEAnnotation *)self setPrimitiveValue:v4 forKey:@"annotationModificationDate"];
}

+ (id)predicateForAnnotationIncludingDeletedWithUUID:(id)a3 assetID:(id)a4
{
  if (a4)
  {
    [NSPredicate predicateWithFormat:@"annotationAssetID == %@ AND annotationUuid == %@", a4, a3];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"annotationUuid == %@ AND annotationType != %d ", a3, 3];
  }
  v4 = ;

  return v4;
}

+ (id)predicateForAnnotationsIncludingDeletedWithUUIDInList:(id)a3 assetID:(id)a4
{
  if (a4)
  {
    [NSPredicate predicateWithFormat:@"annotationUuid IN %@ AND annotationAssetID == %@", a3, a4];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"annotationUuid IN %@ AND annotationType != %d", a3, 3];
  }
  v4 = ;

  return v4;
}

+ (id)predicateForUserAnnotationsWithAssetID:(id)a3 includingDeleted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 userAnnotationTypeValues];
  v8 = v7;
  if (v4)
  {
    v9 = @"annotationAssetID == %@ AND annotationType IN %@";
  }

  else
  {
    v9 = @"annotationAssetID == %@ AND annotationType IN %@ AND annotationDeleted == 0";
  }

  v10 = [NSPredicate predicateWithFormat:v9, v6, v7];

  return v10;
}

+ (id)predicateForUserAnnotationsWithAssetIDInList:(id)a3 includingDeleted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 userAnnotationTypeValues];
  v8 = [NSPredicate predicateWithFormat:@"annotationAssetID IN (%@) AND annotationType IN (%@) and (1 == %d OR annotationDeleted == 0)", v6, v7, v4];

  return v8;
}

+ (id)dictionaryResultsForAssetsWithPredicate:(id)a3 properties:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = objc_alloc_init(NSFetchRequest);
    v12 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:v9];
    [v11 setEntity:v12];
    [v11 setResultType:2];
    [v11 setPropertiesToFetch:v8];
    [v11 setReturnsDistinctResults:1];
    [v11 setPredicate:v7];
    v15 = 0;
    v13 = [v9 executeFetchRequest:v11 error:&v15];

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)annotationIncludingDeletedWithUUID:(id)a3 assetID:(id)a4 inManagedObjectContext:(id)a5
{
  v8 = a5;
  v9 = [a1 predicateForAnnotationIncludingDeletedWithUUID:a3 assetID:a4];
  v10 = [a1 annotationsForPredicate:v9 inManagedObjectContext:v8];

  v11 = [v10 lastObject];

  return v11;
}

+ (id)annotationsForAssetID:(id)a3 includingDeleted:(BOOL)a4 inManagedObjectContext:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [a1 predicateForAnnotationsWithAssetID:a3 includingDeleted:v5];
  v10 = [a1 annotationsForPredicate:v9 inManagedObjectContext:v8];

  return v10;
}

+ (id)annotationsWithAssetIDInList:(id)a3 includingDeleted:(BOOL)a4 inManagedObjectContext:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [a1 predicateForAnnotationsWithAssetIDInList:a3 includingDeleted:v5];
  v10 = [a1 annotationsForPredicate:v9 inManagedObjectContext:v8];

  return v10;
}

+ (id)annotationsIncludingDeletedWithUUIDInList:(id)a3 assetID:(id)a4 inManagedObjectContext:(id)a5
{
  v8 = a5;
  v9 = [a1 predicateForAnnotationsIncludingDeletedWithUUIDInList:a3 assetID:a4];
  v10 = [a1 annotationsForPredicate:v9 inManagedObjectContext:v8];

  return v10;
}

+ (id)globalAnnotationForAssetID:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = [a1 predicateForGlobalAnnotationWithAssetID:a3];
  v8 = [a1 annotationsForPredicate:v7 inManagedObjectContext:v6];

  v9 = [v8 lastObject];

  return v9;
}

+ (id)maxExpressionDescriptionForProperty:(id)a3 expressionName:(id)a4
{
  v5 = a4;
  v6 = [NSExpression expressionForKeyPath:a3];
  v7 = [NSArray arrayWithObject:v6];
  v8 = [NSExpression expressionForFunction:@"max:" arguments:v7];

  v9 = objc_alloc_init(NSExpressionDescription);
  [v9 setName:v5];

  [v9 setExpression:v8];

  return v9;
}

+ (id)maxModificationDateExpressionDescription
{
  v3 = [a1 maxModificationDateColumnName];
  v4 = [a1 maxExpressionDescriptionForProperty:@"annotationModificationDate" expressionName:v3];

  [v4 setExpressionResultType:900];

  return v4;
}

+ (id)maxUserModificationDateExpressionDescription
{
  v3 = [a1 maxModificationDateColumnName];
  v4 = [a1 maxExpressionDescriptionForProperty:@"futureProofing6" expressionName:v3];

  [v4 setExpressionResultType:900];

  return v4;
}

+ (id)maxModificationDateForAssetsWithPredicate:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    context = objc_autoreleasePoolPush();
    v7 = +[AEAnnotation maxModificationDateColumnName];
    v8 = +[AEAnnotation maxModificationDateExpressionDescription];
    v9 = objc_alloc_init(NSFetchRequest);
    v24 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:v6];
    [v9 setEntity:?];
    [v9 setResultType:2];
    v10 = [NSArray arrayWithObjects:@"annotationAssetID", @"annotationModificationDate", 0];
    [v9 setPropertiesToGroupBy:v10];

    v25 = v8;
    v11 = [NSArray arrayWithObjects:v8, @"annotationAssetID", 0];
    [v9 setPropertiesToFetch:v11];

    [v9 setReturnsDistinctResults:1];
    v28 = v5;
    [v9 setPredicate:v5];
    v33 = 0;
    v27 = v6;
    v12 = [v6 executeFetchRequest:v9 error:&v33];
    v23 = v33;
    v13 = objc_alloc_init(NSMutableDictionary);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          v20 = [v19 valueForKey:v7];
          v21 = [v19 valueForKey:@"annotationAssetID"];
          [v13 setValue:v20 forKey:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v16);
    }

    objc_autoreleasePoolPop(context);
    v6 = v27;
    v5 = v28;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)maxAnnotationVersionForAssetsWithPredicate:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc_init(NSMutableDictionary);
    v32 = [a1 maxExpressionDescriptionForProperty:@"futureProofing2" expressionName:@"futureProofing2"];
    [v32 setExpressionResultType:700];
    v10 = objc_alloc_init(NSFetchRequest);
    v31 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:v7];
    [v10 setEntity:?];
    [v10 setResultType:2];
    [v10 setReturnsDistinctResults:1];
    [v10 setPredicate:v6];
    v11 = [NSArray arrayWithObjects:@"annotationAssetID", @"futureProofing2", 0];
    [v10 setPropertiesToGroupBy:v11];

    v12 = [NSArray arrayWithObjects:@"annotationAssetID", @"futureProofing2", 0];
    [v10 setPropertiesToFetch:v12];

    v37 = 0;
    v13 = [v7 executeFetchRequest:v10 error:&v37];
    v14 = v37;
    v15 = v14;
    if (v13)
    {
      v30 = v14;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v16 = v13;
      v17 = [v16 countByEnumeratingWithState:&v33 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        v27 = v13;
        v28 = v8;
        v29 = v6;
        v19 = *v34;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v33 + 1) + 8 * i);
            v22 = [v21 valueForKey:@"annotationAssetID"];
            if (v22)
            {
              [v9 setObject:v21 forKey:v22];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v33 objects:v44 count:16];
        }

        while (v18);
        v8 = v28;
        v6 = v29;
        v24 = v31;
        v23 = v32;
        v13 = v27;
      }

      else
      {
        v24 = v31;
        v23 = v32;
      }

      v15 = v30;
    }

    else
    {
      v25 = BCIMLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v39 = "+[AEAnnotation maxAnnotationVersionForAssetsWithPredicate:inManagedObjectContext:]";
        v40 = 2080;
        v41 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotation.m";
        v42 = 1024;
        v43 = 404;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
      }

      v16 = BCIMLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = v15;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "@Failed to fetch annotations {%@}", buf, 0xCu);
      }

      v24 = v31;
      v23 = v32;
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)maxModificationDateForAllAnnotationsInManagedObjectContext:(id)a3
{
  v3 = a3;
  v4 = +[AEAnnotation maxModificationDateExpressionDescription];
  v5 = [NSPredicate predicateWithValue:1];
  v6 = [NSArray arrayWithObject:v4];
  v7 = [AEAnnotation dictionaryResultsForAssetsWithPredicate:v5 properties:v6 inManagedObjectContext:v3];

  v8 = [v7 lastObject];

  v9 = +[AEAnnotation maxModificationDateColumnName];
  v10 = [v8 objectForKey:v9];

  return v10;
}

+ (id)insertAnnotationWithAssetID:(id)a3 creatorIdentifier:(id)a4 annotationUuid:(id)a5 intoManagedObjectContext:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v10 newByClass:objc_opt_class()];

  [v13 setAnnotationCreatorIdentifier:v11];
  [v13 setAnnotationAssetID:v12];

  if (v9)
  {
    [v13 setAnnotationUuid:v9];
  }

  else
  {
    v14 = +[NSString UUID];
    [v13 setAnnotationUuid:v14];
  }

  return v13;
}

- (AEAnnotationManagedObjectContext)managedObjectContext
{
  v4.receiver = self;
  v4.super_class = AEAnnotation;
  v2 = [(AEAnnotation *)&v4 managedObjectContext];

  return v2;
}

+ (id)optimizedSelectedTextForSerialization:(id)a3
{
  v3 = a3;
  if ([v3 length] >= 0x1389)
  {
    v4 = [v3 substringWithRange:{0, 5000}];

    v3 = v4;
  }

  return v3;
}

+ (id)optimizedRepresentativeTextForSerialization:(id)a3 selectedText:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] > 0x1388 || objc_msgSend(v5, "isEqualToString:", v6))
  {

    v5 = 0;
  }

  return v5;
}

- (void)updateSystemModificationDate
{
  v3 = +[NSDate date];
  [(AEAnnotation *)self setAnnotationModificationDate:v3];
}

- (void)updateUserModificationDate
{
  v3 = +[NSDate date];
  [(AEAnnotation *)self setUserModificationDate:v3];
}

- (void)updateSystemAndUserModificationDates
{
  v3 = +[NSDate date];
  [(AEAnnotation *)self setAnnotationModificationDate:v3];
  [(AEAnnotation *)self setUserModificationDate:v3];
}

- (void)updateSystemAndLocationModificationDates
{
  v3 = +[NSDate date];
  [(AEAnnotation *)self setAnnotationModificationDate:v3];
  [(AEAnnotation *)self setLocationModificationDate:v3];
}

+ (id)globalAnnotationTypeValues
{
  v2 = [NSNumber numberWithInt:3];
  v3 = [NSArray arrayWithObject:v2];

  return v3;
}

+ (id)userAnnotationTypeValues
{
  v2 = [NSNumber numberWithInt:1];
  v3 = [NSNumber numberWithInt:2];
  v4 = [NSArray arrayWithObjects:v2, v3, 0];

  return v4;
}

- (void)setAnnotationStyle:(int)a3
{
  if (a3 == 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  v16 = [NSNumber numberWithBool:a3 == 6];
  v5 = [NSNumber numberWithInt:v4];
  v6 = [(AEAnnotation *)self primitiveValueForKey:@"annotationIsUnderline"];
  v7 = [(AEAnnotation *)self primitiveValueForKey:@"annotationStyle"];
  v8 = v7;
  if (v6 != v16)
  {
    v9 = [v6 isEqual:?];
    v10 = v9;
    if (v8 == v5)
    {
      if (v9)
      {
        goto LABEL_18;
      }

      [(AEAnnotation *)self willChangeValueForKey:@"annotationIsUnderline"];
    }

    else
    {
      v11 = [v8 isEqual:v5];
      v12 = v11;
      if (v10)
      {
        if (v11)
        {
          goto LABEL_18;
        }

        goto LABEL_11;
      }

      [(AEAnnotation *)self willChangeValueForKey:@"annotationIsUnderline"];
      if ((v12 & 1) == 0)
      {
        v13 = @"annotationStyle";
        [(AEAnnotation *)self willChangeValueForKey:@"annotationStyle"];
        [(AEAnnotation *)self setPrimitiveValue:v16 forKey:@"annotationIsUnderline"];
        [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"annotationStyle"];
        [(AEAnnotation *)self didChangeValueForKey:@"annotationIsUnderline"];
        goto LABEL_17;
      }
    }

    v13 = @"annotationIsUnderline";
    v14 = self;
    v15 = v16;
    goto LABEL_16;
  }

  if (v7 != v5 && ([v7 isEqual:v5] & 1) == 0)
  {
LABEL_11:
    v13 = @"annotationStyle";
    [(AEAnnotation *)self willChangeValueForKey:@"annotationStyle"];
    v14 = self;
    v15 = v5;
LABEL_16:
    [(AEAnnotation *)v14 setPrimitiveValue:v15 forKey:v13];
LABEL_17:
    [(AEAnnotation *)self didChangeValueForKey:v13];
    [(AEAnnotation *)self updateSystemAndUserModificationDates];
  }

LABEL_18:
}

- (int)annotationStyle
{
  if ([(AEAnnotation *)self annotationIsUnderline])
  {
    return 6;
  }

  [(AEAnnotation *)self willAccessValueForKey:@"annotationStyle"];
  v4 = [(AEAnnotation *)self primitiveValueForKey:@"annotationStyle"];
  v5 = [v4 intValue];

  [(AEAnnotation *)self didAccessValueForKey:@"annotationStyle"];
  return v5;
}

- (void)setAnnotationType:(int)a3
{
  v3 = *&a3;
  v6 = [(AEAnnotation *)self primitiveValueForKey:@"annotationType"];
  v5 = [NSNumber numberWithInt:v3];
  if (v6 != v5 && ([v6 isEqual:v5] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"annotationType"];
    [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"annotationType"];
    [(AEAnnotation *)self didChangeValueForKey:@"annotationType"];
    [(AEAnnotation *)self updateSystemAndUserModificationDates];
  }
}

- (int)annotationType
{
  [(AEAnnotation *)self willAccessValueForKey:@"annotationType"];
  v3 = [(AEAnnotation *)self primitiveValueForKey:@"annotationType"];
  v4 = [v3 intValue];

  [(AEAnnotation *)self didAccessValueForKey:@"annotationType"];
  return v4;
}

- (void)setAnnotationCreationDate:(id)a3
{
  v4 = a3;
  [(AEAnnotation *)self willChangeValueForKey:@"annotationCreationDate"];
  [(AEAnnotation *)self setPrimitiveValue:v4 forKey:@"annotationCreationDate"];

  [(AEAnnotation *)self didChangeValueForKey:@"annotationCreationDate"];
}

- (BOOL)annotationDeleted
{
  [(AEAnnotation *)self willAccessValueForKey:@"annotationDeleted"];
  v3 = [(AEAnnotation *)self primitiveValueForKey:@"annotationDeleted"];
  v4 = [v3 BOOLValue];

  [(AEAnnotation *)self didAccessValueForKey:@"annotationDeleted"];
  return v4;
}

- (void)setAnnotationDeleted:(BOOL)a3
{
  v3 = a3;
  v6 = [(AEAnnotation *)self primitiveValueForKey:@"annotationDeleted"];
  v5 = [NSNumber numberWithBool:v3];
  if (v6 != v5 && ([v6 isEqual:v5] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"annotationDeleted"];
    [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"annotationDeleted"];
    [(AEAnnotation *)self didChangeValueForKey:@"annotationDeleted"];
    [(AEAnnotation *)self updateSystemAndUserModificationDates];
  }
}

- (BOOL)annotationIsUnderline
{
  [(AEAnnotation *)self willAccessValueForKey:@"annotationIsUnderline"];
  v3 = [(AEAnnotation *)self primitiveValueForKey:@"annotationIsUnderline"];
  v4 = [v3 BOOLValue];

  [(AEAnnotation *)self didAccessValueForKey:@"annotationIsUnderline"];
  return v4;
}

- (void)setAnnotationIsUnderline:(BOOL)a3
{
  v3 = a3;
  v6 = [(AEAnnotation *)self primitiveValueForKey:@"annotationIsUnderline"];
  v5 = [NSNumber numberWithBool:v3];
  if (v6 != v5 && ([v6 isEqual:v5] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"annotationIsUnderline"];
    [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"annotationIsUnderline"];
    [(AEAnnotation *)self didChangeValueForKey:@"annotationIsUnderline"];
    [(AEAnnotation *)self updateSystemAndUserModificationDates];
  }
}

- (void)setAnnotationLocation:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"annotationLocation"];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"annotationLocation"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:v4 forKey:@"annotationLocation"];
    [(AEAnnotation *)self didChangeValueForKey:@"annotationLocation"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (NSString)redactedAnnotationLocation
{
  v2 = [(AEAnnotation *)self annotationLocation];
  v3 = [v2 bc_redactedCFIString];

  return v3;
}

- (BOOL)annotationHasNote
{
  v2 = [(AEAnnotation *)self annotationNote];
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];
  v5 = [v4 length] != 0;

  return v5;
}

- (BOOL)annotationIsBookmark
{
  if ([(AEAnnotation *)self annotationType]== 1)
  {
    return ![(AEAnnotation *)self annotationHasNote];
  }

  else
  {
    return 0;
  }
}

- (void)setAnnotationNote:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"annotationNote"];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    [(AEAnnotation *)self updateSystemAndUserModificationDates];
    [(AEAnnotation *)self willChangeValueForKey:@"annotationNote"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:v4 forKey:@"annotationNote"];
    [(AEAnnotation *)self didChangeValueForKey:@"annotationNote"];
  }
}

- (void)setAnnotationRepresentativeText:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"annotationRepresentativeText"];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"annotationRepresentativeText"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:v4 forKey:@"annotationRepresentativeText"];
    [(AEAnnotation *)self didChangeValueForKey:@"annotationRepresentativeText"];
    [(AEAnnotation *)self updateSystemModificationDate];
  }
}

- (void)setAnnotationSelectedText:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"annotationSelectedText"];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"annotationSelectedText"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:v4 forKey:@"annotationSelectedText"];
    [(AEAnnotation *)self didChangeValueForKey:@"annotationSelectedText"];
    [(AEAnnotation *)self updateSystemModificationDate];
  }
}

- (void)setPlLocationRangeStart:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"plLocationRangeStart"];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqual:v4] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"plLocationRangeStart"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:v4 forKey:@"plLocationRangeStart"];
    [(AEAnnotation *)self didChangeValueForKey:@"plLocationRangeStart"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (void)setPlLocationRangeEnd:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"plLocationRangeEnd"];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqual:v4] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"plLocationRangeEnd"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:v4 forKey:@"plLocationRangeEnd"];
    [(AEAnnotation *)self didChangeValueForKey:@"plLocationRangeEnd"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (void)setPlAbsolutePhysicalLocation:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"plAbsolutePhysicalLocation"];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqual:v4] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"plAbsolutePhysicalLocation"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:v4 forKey:@"plAbsolutePhysicalLocation"];
    [(AEAnnotation *)self didChangeValueForKey:@"plAbsolutePhysicalLocation"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (void)setPlStorageUUID:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"plStorageUUID"];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"plStorageUUID"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:v4 forKey:@"plStorageUUID"];
    [(AEAnnotation *)self didChangeValueForKey:@"plStorageUUID"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (void)setPlUserData:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"plUserData"];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqual:v4] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"plUserData"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:v4 forKey:@"plUserData"];
    [(AEAnnotation *)self didChangeValueForKey:@"plUserData"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (void)setPhysicalPageNumber:(id)a3
{
  v5 = a3;
  v4 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing1"];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing1"];
    [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"futureProofing1"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing1"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (void)setAnnotationVersion:(id)a3
{
  v5 = a3;
  v4 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing2"];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing2"];
    [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"futureProofing2"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing2"];
    [(AEAnnotation *)self updateSystemModificationDate];
  }
}

- (void)setAssetVersion:(id)a3
{
  v5 = a3;
  v4 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing3"];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing3"];
    [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"futureProofing3"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing3"];
    [(AEAnnotation *)self updateSystemModificationDate];
  }
}

- (void)setAttachments:(id)a3
{
  v5 = a3;
  v4 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing4"];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing4"];
    [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"futureProofing4"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing4"];
    [(AEAnnotation *)self updateSystemModificationDate];
  }
}

- (void)setChapterTitle:(id)a3
{
  v5 = a3;
  v4 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing5"];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing5"];
    [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"futureProofing5"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing5"];
    [(AEAnnotation *)self updateSystemModificationDate];
  }
}

- (void)setUserModificationDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
    v5 = [NSString stringWithFormat:@"%f", v4];
  }

  else
  {
    v5 = 0;
  }

  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing6"];
  [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"futureProofing6"];
  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing6"];
}

- (NSDate)userModificationDate
{
  v2 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing6"];
  if ([v2 length])
  {
    [v2 doubleValue];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_NSRange)annotationSelectedTextRange
{
  v2 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing7"];
  v3 = v2;
  if (v2)
  {
    v4 = NSRangeFromString(v2);
    location = v4.location;
    length = v4.length;
  }

  else
  {
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = location;
  v8 = length;
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)setAnnotationSelectedTextRange:(_NSRange)a3
{
  v5 = NSStringFromRange(a3);
  v4 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing7"];
  if (v4 != v5 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing7"];
    [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"futureProofing7"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing7"];
    [(AEAnnotation *)self updateSystemModificationDate];
  }
}

- (float)readingProgressHighWaterMark
{
  v2 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing8"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setReadingProgressHighWaterMark:(float)a3
{
  v4 = [NSNumber numberWithFloat:?];
  v8 = [v4 bc_clampedToUnitIntervalOrNegativeOne];

  v5 = [v8 stringValue];
  v6 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing8"];
  v7 = v6;
  if (v6 != v5 && ([v6 isEqualToString:v5] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing8"];
    [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"futureProofing8"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing8"];
  }
}

- (float)readingProgress
{
  v2 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing10"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setReadingProgress:(float)a3
{
  v4 = [NSNumber numberWithFloat:?];
  v8 = [v4 bc_assertClampedToUnitInterval];

  v5 = [v8 stringValue];
  v6 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing10"];
  v7 = v6;
  if (v6 != v5 && ([v6 isEqualToString:v5] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing10"];
    [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"futureProofing10"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing10"];
  }
}

- (BOOL)spineIndexUpdated
{
  v2 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing9"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setSpineIndexUpdated:(BOOL)a3
{
  v7 = [NSNumber numberWithBool:a3];
  v4 = [v7 stringValue];
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing9"];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing9"];
    [(AEAnnotation *)self setPrimitiveValue:v4 forKey:@"futureProofing9"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing9"];
  }
}

- (void)setLocationModificationDate:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    v6 = [NSString stringWithFormat:@"%f", v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing11"];
  v8 = v7;
  if (v7 != v6 && ([v7 isEqual:v6] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing6"];
    [(AEAnnotation *)self setPrimitiveValue:v6 forKey:@"futureProofing11"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing6"];
  }
}

- (NSDate)locationModificationDate
{
  v2 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing11"];
  if ([v2 length])
  {
    [v2 doubleValue];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAvoidSync
{
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing12"];
  v3.receiver = self;
  v3.super_class = AEAnnotation;
  [(AEAnnotation *)&v3 setPrimitiveValue:@"avoidSync" forKey:@"futureProofing12"];
  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing12"];
}

- (void)clearAvoidSync
{
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing12"];
  v3.receiver = self;
  v3.super_class = AEAnnotation;
  [(AEAnnotation *)&v3 setPrimitiveValue:0 forKey:@"futureProofing12"];
  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing12"];
}

- (BOOL)avoidSync
{
  v2 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing12"];
  v3 = [v2 isEqualToString:@"avoidSync"];

  return v3;
}

- (void)setFutureProofing1:(id)a3
{
  v4 = a3;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing1"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:v4 forKey:@"futureProofing1"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing1"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing2:(id)a3
{
  v4 = a3;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing2"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:v4 forKey:@"futureProofing2"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing2"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing3:(id)a3
{
  v4 = a3;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing3"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:v4 forKey:@"futureProofing3"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing3"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing4:(id)a3
{
  v4 = a3;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing4"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:v4 forKey:@"futureProofing4"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing4"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing5:(id)a3
{
  v4 = a3;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing5"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:v4 forKey:@"futureProofing5"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing5"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing6:(id)a3
{
  v4 = a3;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing6"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:v4 forKey:@"futureProofing6"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing6"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing7:(id)a3
{
  v4 = a3;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing7"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:v4 forKey:@"futureProofing7"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing7"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing8:(id)a3
{
  v4 = a3;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing8"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:v4 forKey:@"futureProofing8"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing8"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing9:(id)a3
{
  v4 = a3;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing9"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:v4 forKey:@"futureProofing9"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing9"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing10:(id)a3
{
  v4 = a3;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing10"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:v4 forKey:@"futureProofing10"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing10"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing11:(id)a3
{
  v4 = a3;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing11"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:v4 forKey:@"futureProofing11"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing11"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing12:(id)a3
{
  v4 = a3;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing12"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:v4 forKey:@"futureProofing12"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing12"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (BOOL)bumpAnnotationVersionToMinimumVersion:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotation *)self annotationVersion];
  v6 = v5;
  if (v5 && (v5 == v4 || [v5 compare:v4 options:64] != -1))
  {
    v7 = 0;
  }

  else
  {
    [(AEAnnotation *)self setAnnotationVersion:v4];
    v7 = 1;
  }

  return v7;
}

- (BOOL)updateReadingProgressAndBumpHighWaterMarkToProgress:(float)a3
{
  BCFloatAssertUnitIntervalClamp(a3);
  v5 = v4;
  [(AEAnnotation *)self setReadingProgress:?];
  if ([(AEAnnotation *)self hasReadingProgressHighWaterMark])
  {
    [(AEAnnotation *)self readingProgressHighWaterMark];
    if (v5 <= *&v6)
    {
      return 0;
    }
  }

  *&v6 = v5;
  [(AEAnnotation *)self setReadingProgressHighWaterMark:v6];
  return 1;
}

- (BOOL)hasReadingProgressHighWaterMark
{
  v2 = [(AEAnnotation *)self valueForKey:@"futureProofing8"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasReadingProgress
{
  v2 = [(AEAnnotation *)self valueForKey:@"futureProofing10"];
  v3 = v2 != 0;

  return v3;
}

+ (id)annotatedAttributedStringWithString:(id)a3 annotationStyle:(int)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = *&a4;
  v8 = a3;
  v9 = [[NSMutableAttributedString alloc] initWithString:v8];

  v10 = [[NSNumber alloc] initWithInt:v7];
  [v9 addAttribute:@"kAEAnnotationStyleAttributeName" value:v10 range:{location, length}];

  return v9;
}

+ (id)annotatedAttributedStringForAnnotation:(id)a3 withPossibleLength:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 annotationRepresentativeText];
  v8 = [v7 flattenedAnnotationString];

  v9 = [v6 annotationSelectedText];
  v10 = [v9 flattenedAnnotationString];

  if ([v10 length] >= a4 || +[AEAnnotation isSelectedTextRepeatedInRepresentativeTextForAnnotation:](AEAnnotation, "isSelectedTextRepeatedInRepresentativeTextForAnnotation:", v6))
  {
    v11 = v10;
    v30 = 0;
    v31 = [v11 length];
    goto LABEL_17;
  }

  v12 = v8;
  v13 = [v12 rangeOfString:v10];
  v30 = v13;
  v31 = v14;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v10;
LABEL_15:
    v11 = v15;
    goto LABEL_16;
  }

  if (&v14[v13] <= a4)
  {
    v15 = v12;
    goto LABEL_15;
  }

  if (!v12)
  {
    v17 = 0;
LABEL_26:
    v11 = v10;

    v29 = [v11 length];
    v30 = 0;
    v31 = v29;
    goto LABEL_16;
  }

  v16 = [AEAnnotation clauseForSelectedTextForAnnotation:v6 inSentence:v12 possibleLength:a4 highlightedRange:&v30];
  if (!v16)
  {
    v16 = [a1 wordsForSelectedTextForAnnotation:v6 inSentence:v12 possibleLength:a4 highlightedRange:&v30];
    if (!v16)
    {
      v16 = [a1 lettersForSelectedTextForAnnotation:v6 inSentence:v12 possibleLength:a4 highlightedRange:&v30];
    }
  }

  v17 = v16;
  if (!v16 || v30 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v18 = IMCommonCoreBundle();
  v19 = [v18 localizedStringForKey:@"\\U2026" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v20 = [v19 length];
  v30 = &v20[v30];
  v11 = [v19 stringByAppendingString:v17];

LABEL_16:
LABEL_17:
  if ([v11 length])
  {
    if (v11)
    {
LABEL_19:
      v21 = [v11 stringByReplacingOccurrencesOfString:@"\r" withString:{@"\n", v30}];

      v22 = objc_opt_class();
      v23 = [v6 annotationStyle];
      v24 = [v22 annotatedAttributedStringWithString:v21 annotationStyle:v23 range:{v30, v31}];
      goto LABEL_22;
    }
  }

  else
  {
    v25 = [v6 annotationRepresentativeText];

    v26 = [v25 length];
    v30 = 0;
    v31 = v26;
    v11 = v25;
    if (v25)
    {
      goto LABEL_19;
    }
  }

  v21 = 0;
  v24 = 0;
LABEL_22:
  v27 = v24;

  return v27;
}

+ (id)annotatedAttributedStringForAnnotation:(id)a3
{
  v3 = a3;
  v4 = [v3 annotationSelectedText];
  v5 = [v4 flattenedAnnotationString];

  v6 = [v5 length];
  if ([v5 length])
  {
    if (v5)
    {
LABEL_3:
      v7 = [v5 stringByReplacingOccurrencesOfString:@"\r" withString:@"\n"];

      v8 = [objc_opt_class() annotatedAttributedStringWithString:v7 annotationStyle:objc_msgSend(v3 range:{"annotationStyle"), 0, v6}];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = [v3 annotationRepresentativeText];

    v6 = [v9 length];
    v5 = v9;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_6:

  return v8;
}

+ (BOOL)isSelectedTextRepeatedInRepresentativeTextForAnnotation:(id)a3
{
  v3 = a3;
  v4 = [v3 annotationRepresentativeText];
  if (v4 && (v5 = v4, [v3 annotationSelectedText], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [v3 annotationRepresentativeText];
    v8 = [v3 annotationSelectedText];
    v9 = [v3 annotationRepresentativeText];
    v13.length = [v9 length];
    v13.location = 0;
    Results = CFStringCreateArrayWithFindResults(0, v7, v8, v13, 0);

    v11 = [(__CFArray *)Results count]> 1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (id)clauseForSelectedTextForAnnotation:(id)a3 inSentence:(id)a4 possibleLength:(unint64_t)a5 highlightedRange:(_NSRange *)a6
{
  v9 = a3;
  v10 = a4;
  location = a6->location;
  length = a6->length;
  v13 = +[NSCharacterSet punctuationCharacterSet];
  v14 = 0;
  v15 = length + location;
  v16 = v15;
  while (v14 < v15)
  {
    v17 = [v10 rangeOfCharacterFromSet:v13 options:0 range:{v14, v16}];
    v14 = &v17[v18];
    v16 = v15 - &v17[v18];
    if (v16 <= a5)
    {
      v19 = [v10 substringWithRange:{v14, objc_msgSend(v10, "length") - v14}];
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_6:
  v20 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v21 = [v19 stringByTrimmingCharactersInSet:v20];

  if (v21)
  {
    v22 = [v9 annotationSelectedText];
    a6->location = [v21 rangeOfString:v22];
    a6->length = v23;
  }

  return v21;
}

+ (id)wordsForSelectedTextForAnnotation:(id)a3 inSentence:(id)a4 possibleLength:(unint64_t)a5 highlightedRange:(_NSRange *)a6
{
  v9 = a3;
  v10 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_CD7AC;
  v30 = sub_CD7BC;
  v31 = 0;
  location = a6->location;
  length = a6->length;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_CD7C4;
  v20[3] = &unk_2CCB78;
  v24 = length;
  v25 = a5;
  v22 = &v26;
  v23 = location;
  v13 = v10;
  v21 = v13;
  [v13 enumerateSubstringsInRange:0 options:length + location usingBlock:{3, v20}];
  v14 = v27[5];
  v15 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v16 = [v14 stringByTrimmingCharactersInSet:v15];

  if (v16)
  {
    v17 = [v9 annotationSelectedText];
    a6->location = [v16 rangeOfString:v17];
    a6->length = v18;
  }

  _Block_object_dispose(&v26, 8);

  return v16;
}

+ (id)lettersForSelectedTextForAnnotation:(id)a3 inSentence:(id)a4 possibleLength:(unint64_t)a5 highlightedRange:(_NSRange *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6->length + a6->location;
  v12 = v11 - a5;
  v13 = [v10 length];
  v14 = v11 >= a5;
  v15 = v11 - a5;
  if (v15 != 0 && v14 && (v16 = v13, v13 <= [v10 length]))
  {
    v17 = [v10 substringWithRange:{v15, &v16[-v12]}];
  }

  else
  {
    v17 = 0;
  }

  v18 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v19 = [v17 stringByTrimmingCharactersInSet:v18];

  if (v19)
  {
    v20 = [v9 annotationSelectedText];
    a6->location = [v19 rangeOfString:v20];
    a6->length = v21;
  }

  return v19;
}

+ (id)contextAwareSelectedTextFromAnnotation:(id)a3
{
  v3 = a3;
  v4 = [v3 annotationRepresentativeText];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 annotationSelectedTextRange];
    v7 = v6;
  }

  else
  {
    v7 = 0;
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v5 == 0x7FFFFFFFFFFFFFFFLL || ![v4 length])
  {
    v9 = [v3 annotationSelectedText];
    if ([v4 length] && (objc_msgSend(v9, "isEqualToString:", v4) & 1) == 0 && objc_msgSend(v4, "ae_occurrenceCountOfString:", v9) == &dword_0 + 1)
    {
      v5 = [v4 rangeOfString:v9];
      v7 = v10;
      v8 = 0;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v5 != 0x7FFFFFFFFFFFFFFFLL && !v8)
  {
    v11 = IMCommonCoreBundle();
    v12 = [v11 localizedStringForKey:@"\\U2026" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    [v4 substringWithRange:{v5, v7}];
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_CD7AC;
    v13 = v27 = sub_CD7BC;
    v28 = v13;
    v14 = [v13 length];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_CDC10;
    v17[3] = &unk_2CCBC8;
    v21 = v5;
    v22 = v7;
    v18 = v4;
    v15 = v12;
    v19 = v15;
    v20 = &v23;
    [v13 enumerateSubstringsInRange:0 options:v14 usingBlock:{4, v17}];
    v8 = v24[5];

    _Block_object_dispose(&v23, 8);
  }

  return v8;
}

- (BOOL)validateForInsert:(id *)a3
{
  v7.receiver = self;
  v7.super_class = AEAnnotation;
  v5 = [(AEAnnotation *)&v7 validateForInsert:?];
  return v5 & [(AEAnnotation *)self validateConsistency:a3];
}

- (BOOL)validateForUpdate:(id *)a3
{
  v7.receiver = self;
  v7.super_class = AEAnnotation;
  v5 = [(AEAnnotation *)&v7 validateForUpdate:?];
  return v5 & [(AEAnnotation *)self validateConsistency:a3];
}

- (BOOL)validateConsistency:(id *)a3
{
  v5 = [(AEAnnotation *)self annotationLocation];
  if ([v5 length])
  {
    goto LABEL_4;
  }

  v6 = [(AEAnnotation *)self plUserData];
  if ([v6 length])
  {

LABEL_4:
    return 1;
  }

  v8 = [(AEAnnotation *)self isAnnotationDeleted];

  if (v8)
  {
    return 1;
  }

  v9 = BCIMLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1E9688(self, v9);
  }

  if (!a3)
  {
    return 0;
  }

  v10 = [NSError errorWithDomain:@"AEAnnotationErrorDomain" code:1000 userInfo:0];
  v11 = v10;
  result = 0;
  *a3 = v10;
  return result;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v27 = NSStringFromClass(v3);
  v36 = [(AEAnnotation *)self annotationAssetID];
  v38 = [(AEAnnotation *)self annotationCreationDate];
  v32 = [(AEAnnotation *)self annotationCreatorIdentifier];
  v26 = [(AEAnnotation *)self isAnnotationDeleted];
  v25 = [(AEAnnotation *)self annotationIsUnderline];
  v37 = [(AEAnnotation *)self annotationLocation];
  v35 = [(AEAnnotation *)self annotationModificationDate];
  v24 = [(AEAnnotation *)self annotationNote];
  v34 = [(AEAnnotation *)self annotationRepresentativeText];
  v23 = [(AEAnnotation *)self annotationSelectedText];
  v22 = [(AEAnnotation *)self annotationStyle];
  v21 = [(AEAnnotation *)self annotationType];
  v33 = [(AEAnnotation *)self annotationUuid];
  v31 = [(AEAnnotation *)self physicalPageNumber];
  v20 = [(AEAnnotation *)self annotationVersion];
  v30 = [(AEAnnotation *)self assetVersion];
  v29 = [(AEAnnotation *)self attachments];
  v19 = [(AEAnnotation *)self chapterTitle];
  v18 = [(AEAnnotation *)self userModificationDate];
  v17 = [(AEAnnotation *)self annotationModificationDate];
  v16 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing7"];
  [(AEAnnotation *)self readingProgressHighWaterMark];
  v5 = v4;
  v14 = [(AEAnnotation *)self spineIndexUpdated];
  [(AEAnnotation *)self readingProgress];
  v7 = v6;
  v8 = [(AEAnnotation *)self locationModificationDate];
  v15 = [(AEAnnotation *)self plAbsolutePhysicalLocation];
  v9 = [(AEAnnotation *)self plLocationRangeEnd];
  v10 = [(AEAnnotation *)self plLocationRangeStart];
  v11 = [(AEAnnotation *)self plStorageUUID];
  v12 = [(AEAnnotation *)self plUserData];
  v28 = [NSString stringWithFormat:@"<%@:%p\n    assetID = %@\n    creationDate = %@;\n    creatorIdentifier = %@;\n    deleted = %d;\n    isUnderline = %d;\n    cfiLocation = %@;\n    modificationDate = %@;\n    note = %@;\n    representativeText = %@;\n    selectedText = %@;\n    style = %d;\n    type = %d;\n    uuid = %@;\n    physicalPageNumber = %@;\n    annotationVersion = %@;\n    assetVersion = %@;\n    attachments = %@;\n    chapterTitle = %@;\n    userModificationDate = %@;\n    annotationModificationDate = %@;\n    selectedTextRange = %@;\n    readingProgressHighWaterMark = %f;\n    spineIndexUpdated = %d;\n    readingProgress = %f;\n    locationModificationDate = %@;\n    plAbsolutePhysicalLocation = %@;\n    plLocationRangeEnd = %@;\n    plLocationRangeStart = %@;\n    plStorageUUID = %@;\n    plUserData = %@;\n>", v27, self, v36, v38, v32, v26, v25, v37, v35, v24, v34, v23, v22, v21, v33, v31, v20, v30, v29, v19, v18, v17, v16, *&v5, v14, *&v7, v8, v15, v9, v10, v11, v12];;

  return v28;
}

- (NSNumber)annotationStyleNumber
{
  v2 = [(AEAnnotation *)self annotationStyle];

  return [NSNumber numberWithInt:v2];
}

- (NSNumber)annotationTypeNumber
{
  v2 = [(AEAnnotation *)self annotationType];

  return [NSNumber numberWithInt:v2];
}

+ (BOOL)mergeAnnotation:(id)a3 withServerAnnotation:(id)a4 moc:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_opt_class() lastModificationFromDictionaryRepresentation:v8];
  v11 = [v10 unsignedLongLongValue];

  v12 = [v7 annotationModificationDate];
  [v12 timeIntervalSince1970];
  v14 = v13;

  v15 = [objc_opt_class() annotationAssetIDFromDictionaryRepresentation:v8];
  if (v11 < v14)
  {
    v16 = BKMobileCloudSyncAnnotationsLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v29 = 138413058;
      v30 = v15;
      v31 = 1024;
      *v32 = v14;
      *&v32[4] = 1024;
      *&v32[6] = v11;
      LOWORD(v33) = 1024;
      *(&v33 + 2) = v14 - v11;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Client: %d; Server: %d; (%d) client > server, not merging", &v29, 0x1Eu);
    }

    goto LABEL_23;
  }

  v17 = BKMobileCloudSyncAnnotationsLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (v11 == v14)
  {
    if (v18)
    {
      v29 = 138413058;
      v30 = v15;
      v31 = 1024;
      *v32 = v11;
      *&v32[4] = 1024;
      *&v32[6] = v11;
      LOWORD(v33) = 1024;
      *(&v33 + 2) = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Client: %d; Server: %d; (%d) client == server, not merging", &v29, 0x1Eu);
    }

    goto LABEL_23;
  }

  if (v18)
  {
    v29 = 138413058;
    v30 = v15;
    v31 = 1024;
    *v32 = v14;
    *&v32[4] = 1024;
    *&v32[6] = v11;
    LOWORD(v33) = 1024;
    *(&v33 + 2) = v14 - v11;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Client: %d; Server: %d; (%d) ... MERGING ANNOTATION", &v29, 0x1Eu);
  }

  if (!v7)
  {
    v19 = [objc_opt_class() annotationCreatorIdentifierFromDictionaryRepresentation:v8];
    v20 = [objc_opt_class() annotationAssetIDFromDictionaryRepresentation:v8];
    v7 = [AEAnnotation insertAnnotationWithAssetID:v20 creatorIdentifier:v19 annotationUuid:0 intoManagedObjectContext:v9];
    v21 = BKMobileCloudSyncAnnotationsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v7 annotationUuid];
      v29 = 138412546;
      v30 = v20;
      v31 = 2112;
      *v32 = v22;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Creating new Annotation: %@", &v29, 0x16u);
    }

    goto LABEL_17;
  }

  v19 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v7 annotationUuid];
    v29 = 138412546;
    v30 = v15;
    v31 = 2112;
    *v32 = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Updating existing Annotation: %@", &v29, 0x16u);
LABEL_17:
  }

  v23 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [v7 redactedAnnotationLocation];
    v25 = [v7 plUserData];
    v26 = [v25 description];
    v29 = 138412802;
    v30 = v15;
    v31 = 2114;
    *v32 = v24;
    *&v32[8] = 2114;
    v33 = v26;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ annotation.annotationLocation=%{public}@ annotation.plUserData=%{public}@", &v29, 0x20u);
  }

  v27 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v29 = 138412546;
    v30 = v15;
    v31 = 2114;
    *v32 = v8;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ dictionary=%{public}@", &v29, 0x16u);
  }

  [v7 deserializeFromDictionary:v8 trustedSource:0];
LABEL_23:

  return v11 < v14;
}

+ (BOOL)mergeServerAnnotations:(id)a3 forAssetID:(id)a4 intoMoc:(id)a5
{
  v7 = a3;
  v8 = a4;
  v36 = a5;
  v9 = BKMobileCloudSyncAnnotationsLog();
  v33 = v8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
    *buf = 138412546;
    v46 = v33;
    v47 = 2112;
    v48 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Merging {%@} serverAnnotations", buf, 0x16u);

    v8 = v33;
  }

  v11 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  [AEAnnotation annotationsForAssetID:v8 includingDeleted:1 inManagedObjectContext:v36];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v12 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v42;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        v17 = [v16 annotationUuid];
        [v11 setObject:v16 forKey:v17];
      }

      v13 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v13);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = v7;
  v18 = [v34 countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = 0;
    v22 = *v38;
    *&v19 = 138412802;
    v32 = v19;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v34);
        }

        v24 = *(*(&v37 + 1) + 8 * j);
        if ([AEAnnotation isValidForDeserialization:v24, v32])
        {
          v25 = [objc_opt_class() annotationTypeFromDictionaryRepresentation:v24];
          v26 = objc_opt_class();
          if (v25 == 3)
          {
            v27 = [v26 globalAnnotationForAssetID:v8 inManagedObjectContext:v36];
            v28 = BKMobileCloudSyncAnnotationsLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = [objc_opt_class() annotationUuidFromDictionaryRepresentation:v24];
              v30 = [v27 annotationUuid];
              *buf = v32;
              v46 = v33;
              v47 = 2112;
              v48 = v29;
              v49 = 2112;
              v50 = v30;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Found Global Annotation -- Server: %@\nLocal: %@", buf, 0x20u);

              v8 = v33;
            }
          }

          else
          {
            v28 = [v26 annotationUuidFromDictionaryRepresentation:v24];
            v27 = [v11 objectForKey:v28];
          }

          v21 |= [AEAnnotation mergeAnnotation:v27 withServerAnnotation:v24 moc:v36];
        }

        else
        {
          v27 = BKMobileCloudSyncAnnotationsLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v46 = v8;
            v47 = 2112;
            v48 = v24;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Annotation not valid for deserialization: %@", buf, 0x16u);
          }
        }
      }

      v20 = [v34 countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v20);
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21 & 1;
}

- (BOOL)usesLegacySerializationMethod
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(AEAnnotation *)self performSelector:"doesSerializeAs_iBooks"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)aeAnnotationDictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  +[AEAnnotation requiredKeysForDictionaryRepresentation];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v4 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v39 + 1) + 8 * i);
        v9 = [(AEAnnotation *)self valueForKey:v8];
        if (v9)
        {
          v10 = +[NSNull null];

          if (v9 != v10)
          {
            [v3 setObject:v9 forKey:v8];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v5);
  }

  +[AEAnnotation dateKeysForDictionaryRepresentation];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = v38 = 0u;
  v11 = [v29 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v29);
        }

        v15 = *(*(&v35 + 1) + 8 * j);
        v16 = [(AEAnnotation *)self valueForKey:v15];
        if (v16)
        {
          v17 = +[NSNull null];

          if (v16 != v17)
          {
            [v16 timeIntervalSince1970];
            v19 = [NSNumber numberWithUnsignedLongLong:v18];
            [v3 setObject:v19 forKey:v15];
          }
        }
      }

      v12 = [v29 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v12);
  }

  if (![(AEAnnotation *)self isAnnotationDeleted])
  {
    v20 = +[AEAnnotation optionalKeysForDictionaryRepresentation];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        for (k = 0; k != v22; k = k + 1)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v31 + 1) + 8 * k);
          v26 = [(AEAnnotation *)self valueForKey:v25];
          if (v26)
          {
            v27 = +[NSNull null];

            if (v26 != v27)
            {
              [v3 setObject:v26 forKey:v25];
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v22);
    }
  }

  return v3;
}

+ (id)dictionaryRepresentationsForAnnotations:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  if ([v3 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 isValidForSerialization])
          {
            v11 = [v10 dictionaryRepresentation];
            [v4 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

+ (id)_dictionaryRepresentationForAnnotationsMatchingPredicate:(id)a3 map:(id)a4 inManagedObjectContext:(id)a5
{
  v28 = a5;
  v8 = a4;
  v26 = a3;
  v9 = [a1 dateKeysForDictionaryRepresentation];
  v10 = [a1 requiredKeysForDictionaryRepresentation];
  v11 = [a1 optionalKeysForDictionaryRepresentation];
  v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count") + objc_msgSend(v10, "count") + objc_msgSend(v11, "count")}];
  [v12 addObjectsFromArray:v9];
  [v12 addObjectsFromArray:v10];
  v27 = v11;
  [v12 addObjectsFromArray:v11];
  v13 = [AEAnnotation predicateForAllAnnotationsIncludingDeleted:0];
  v14 = [NSArray arrayWithObjects:v13, v26, 0];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];

  v16 = [a1 dictionaryResultsForAnnotationsWithPredicate:v15 properties:v12 propertyNamesMap:v8 inManagedObjectContext:v28];

  v17 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count") + objc_msgSend(v10, "count")}];
  [v17 addObjectsFromArray:v9];
  [v17 addObjectsFromArray:v10];
  v18 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", -+[IMUserDataCull maxDeletedAge]);
  v19 = [NSPredicate predicateWithFormat:@"%K == YES && %K > %@", @"annotationDeleted", @"annotationModificationDate", v18];

  v20 = [NSArray arrayWithObjects:v19, v26, 0];

  v21 = [NSCompoundPredicate andPredicateWithSubpredicates:v20];

  v22 = [a1 dictionaryResultsForAnnotationsWithPredicate:v21 properties:v17 propertyNamesMap:v8 inManagedObjectContext:v28];

  v23 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v16, "count") + objc_msgSend(v22, "count")}];
  v24 = v23;
  if (v16)
  {
    [v23 addObjectsFromArray:v16];
  }

  if (v22)
  {
    [v24 addObjectsFromArray:v22];
  }

  return v24;
}

+ (id)compatibleDictionaryRepresentationForAnnotationsMatchingPredicate:(id)a3 inManagedObjectContext:(id)a4
{
  v38 = a4;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:@"bookDatabaseKey" forKey:@"annotationAssetID"];
  [v4 setObject:@"date" forKey:@"annotationCreationDate"];
  [v4 setObject:@"lastModification" forKey:@"annotationModificationDate"];
  [v4 setObject:@"deletedFlag" forKey:@"annotationDeleted"];
  [v4 setObject:@"highlightColor" forKey:@"annotationStyle"];
  [v4 setObject:@"ordinal" forKey:@"plLocationRangeStart"];
  [v4 setObject:@"serverSyncUniqueId" forKey:@"annotationUuid"];
  [v4 setObject:@"text" forKey:@"annotationSelectedText"];
  [v4 setObject:@"textualContext" forKey:@"annotationRepresentativeText"];
  [v4 setObject:@"annotation" forKey:@"annotationNote"];
  [v4 setObject:@"locationBPlist" forKey:@"plUserData"];
  v5 = +[NSNull null];
  [v4 setObject:v5 forKey:@"annotationCreatorIdentifier"];

  v6 = +[NSNull null];
  [v4 setObject:v6 forKey:@"plAbsolutePhysicalLocation"];

  v7 = +[NSNull null];
  [v4 setObject:v7 forKey:@"plLocationRangeEnd"];

  v8 = +[NSNull null];
  [v4 setObject:v8 forKey:@"futureProofing1"];

  v9 = +[NSNull null];
  [v4 setObject:v9 forKey:@"futureProofing2"];

  v10 = +[NSNull null];
  [v4 setObject:v10 forKey:@"futureProofing3"];

  v11 = +[NSNull null];
  [v4 setObject:v11 forKey:@"futureProofing4"];

  v12 = +[NSNull null];
  [v4 setObject:v12 forKey:@"futureProofing5"];

  v13 = +[NSNull null];
  [v4 setObject:v13 forKey:@"futureProofing6"];

  v14 = +[NSNull null];
  [v4 setObject:v14 forKey:@"futureProofing7"];

  v15 = +[NSNull null];
  [v4 setObject:v15 forKey:@"futureProofing8"];

  v16 = +[NSNull null];
  [v4 setObject:v16 forKey:@"futureProofing9"];

  v17 = +[NSNull null];
  [v4 setObject:v17 forKey:@"futureProofing10"];

  v18 = +[NSNull null];
  [v4 setObject:v18 forKey:@"futureProofing11"];

  v19 = +[NSNull null];
  [v4 setObject:v19 forKey:@"futureProofing12"];

  v20 = [NSExpression expressionForKeyPath:@"annotationType"];
  v21 = [NSNumber numberWithInteger:1];
  v22 = [NSExpression expressionForConstantValue:v21];

  v23 = [NSNumber numberWithInteger:3];
  v24 = [NSExpression expressionForConstantValue:v23];

  v25 = [NSArray arrayWithObjects:v20, v24, 0];
  v26 = [NSExpression expressionForFunction:@"add:to:" arguments:v25];

  v27 = [NSArray arrayWithObjects:v26, v24, 0];
  v28 = [NSExpression expressionForFunction:@"modulus:by:" arguments:v27];

  v29 = [NSArray arrayWithObjects:v28, v22, 0];
  v30 = [NSExpression expressionForFunction:@"add:to:" arguments:v29];

  v31 = objc_alloc_init(NSExpressionDescription);
  [v31 setName:@"type"];
  [v31 setExpression:v30];
  [v4 setObject:v31 forKey:@"annotationType"];

  v32 = [NSPredicate predicateWithFormat:@"(%K == nil || %K == %@ || %K == %@) && (%K <= %@ || %K == nil)", @"annotationCreatorIdentifier", @"annotationCreatorIdentifier", @"com~apple~iBooks", @"annotationCreatorIdentifier", @"com.apple.iBooks", @"futureProofing2", @"2", @"futureProofing2"];
  v33 = [NSPredicate predicateWithFormat:@"(%K != nil && %K != %@ && %K != %@) || %K > %@", @"annotationCreatorIdentifier", @"annotationCreatorIdentifier", @"com~apple~iBooks", @"annotationCreatorIdentifier", @"com.apple.iBook", @"futureProofing2", @"2"];
  v34 = [a1 _dictionaryRepresentationForAnnotationsMatchingPredicate:v32 map:v4 inManagedObjectContext:v38];
  v35 = [a1 _dictionaryRepresentationForAnnotationsMatchingPredicate:v33 map:0 inManagedObjectContext:v38];

  v36 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v34 count] + objc_msgSend(v35, "count"));
  [v36 addObjectsFromArray:v34];
  [v36 addObjectsFromArray:v35];

  return v36;
}

+ (id)aeAnnotationDictionaryRepresentationsForAnnotations:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  if ([v3 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 isValidForSerialization])
          {
            v11 = [v10 aeAnnotationDictionaryRepresentation];
            [v4 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

+ (id)dictionaryResultsForAnnotationsWithPredicate:(id)a3 properties:(id)a4 propertyNamesMap:(id)a5 inManagedObjectContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v13)
  {
    v58 = v13;
    v59 = v10;
    v57 = v11;
    v15 = [v11 mutableCopy];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = [a1 dateKeysForDictionaryRepresentation];
    v16 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
    v63 = v15;
    if (v16)
    {
      v17 = v16;
      v18 = *v72;
      do
      {
        v19 = 0;
        v60 = v17;
        do
        {
          if (*v72 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v71 + 1) + 8 * v19);
          v21 = [v15 indexOfObject:v20];
          if (v21 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v22 = v21;
            v23 = [NSExpression expressionForKeyPath:v20];
            v24 = [NSNumber numberWithDouble:978307200.0];
            v25 = [NSExpression expressionForConstantValue:v24];

            v26 = [NSArray arrayWithObjects:v23, v25, 0];
            v27 = [NSExpression expressionForFunction:@"add:to:" arguments:v26];

            v28 = v20;
            v29 = [v12 objectForKey:v28];
            objc_opt_class();
            v30 = v12;
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v32 = [v30 objectForKey:v28];

              v28 = v32;
            }

            v12 = v30;
            v33 = objc_alloc_init(NSExpressionDescription);
            [v33 setName:v28];
            [v33 setExpression:v27];
            [v33 setExpressionResultType:300];
            v15 = v63;
            [v63 replaceObjectAtIndex:v22 withObject:v33];

            v17 = v60;
          }

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
      }

      while (v17);
    }

    v10 = v59;
    if ([v12 count])
    {
      v56 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:v58];
      [v56 propertiesByName];
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_16B288;
      v55 = v69[3] = &unk_2CEAB0;
      v70 = v55;
      v34 = objc_retainBlock(v69);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v61 = v12;
      v35 = v12;
      v36 = [v35 countByEnumeratingWithState:&v65 objects:v75 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v66;
        do
        {
          for (i = 0; i != v37; i = i + 1)
          {
            if (*v66 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v65 + 1) + 8 * i);
            v41 = [v15 indexOfObject:v40];
            if (v41 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v42 = v41;
              v43 = [v35 objectForKey:v40];
              v44 = +[NSNull null];
              v45 = [v43 isEqual:v44];

              if (v45)
              {
                [v63 removeObjectAtIndex:v42];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v46 = [NSExpression expressionForKeyPath:v40];
                  v47 = objc_alloc_init(NSExpressionDescription);
                  [v47 setName:v43];
                  [v47 setExpression:v46];
                  [v47 setExpressionResultType:{(v34[2])(v34, v40)}];
                  [v63 replaceObjectAtIndex:v42 withObject:v47];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v48 = v43;
                    if (![v48 expressionResultType])
                    {
                      [v48 setExpressionResultType:{(v34[2])(v34, v40)}];
                    }

                    [v63 replaceObjectAtIndex:v42 withObject:v48];
                  }

                  else
                  {
                    [v63 replaceObjectAtIndex:v42 withObject:v43];
                  }
                }
              }

              v15 = v63;
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v65 objects:v75 count:16];
        }

        while (v37);
      }

      v10 = v59;
      v12 = v61;
    }

    v49 = objc_autoreleasePoolPush();
    v50 = objc_alloc_init(NSFetchRequest);
    v51 = v15;
    v14 = v58;
    v52 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:v58];
    [v50 setEntity:v52];
    [v50 setResultType:2];
    [v50 setPropertiesToFetch:v51];
    [v50 setPredicate:v10];
    v64 = 0;
    v53 = [v58 executeFetchRequest:v50 error:&v64];

    objc_autoreleasePoolPop(v49);
    v11 = v57;
  }

  else
  {
    v53 = 0;
  }

  return v53;
}

- (BOOL)isValidForSerialization
{
  if (![(AEAnnotation *)self isAnnotationDeleted])
  {
    return 1;
  }

  v3 = [(AEAnnotation *)self annotationModificationDate];
  [v3 timeIntervalSince1970];
  v5 = v4;

  if ([IMUserDataCull isTimestampNewerThanMaxDeletedAge:v5])
  {
    return 1;
  }

  v7 = BCIMLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(AEAnnotation *)self annotationAssetID];
    v9 = [(AEAnnotation *)self annotationUuid];
    v10 = +[NSDate date];
    [v10 timeIntervalSince1970];
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2048;
    v17 = ((v11 - v5) / 86400.0);
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "MZBookKeeper isValidForSerialization assetID=%@ [%@] [Deleted %llu days ago]", &v12, 0x20u);
  }

  return 0;
}

- (void)deserializeFromDictionary:(id)a3 trustedSource:(BOOL)a4
{
  v17 = a3;
  v16 = a4;
  v7 = [objc_opt_class() annotationCreatorIdentifierFromDictionaryRepresentation:v17];
  v8 = [v17 objectForKey:@"bookDatabaseKey"];
  if (![objc_opt_class() isBKBookmarkCreatorIdentifier:v7] || !objc_msgSend(v8, "length"))
  {
    v9 = v7;
LABEL_8:
    v10 = "aeAnnotationDeserializeFromDictionary:trustedSource:";
    goto LABEL_9;
  }

  v9 = @"com~apple~iBooks";

  v10 = "iBooks_deserializeFromDictionary:trustedSource:";
  if (!"iBooks_deserializeFromDictionary:trustedSource:")
  {
    goto LABEL_8;
  }

  v11 = objc_opt_respondsToSelector();
  if ("iBooks_deserializeFromDictionary:trustedSource:" == a2 || (v11 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v12 = [(AEAnnotation *)self methodSignatureForSelector:v10];
  v13 = [NSInvocation invocationWithMethodSignature:v12];
  [v13 setSelector:v10];
  [v13 setArgument:&v17 atIndex:2];
  [v13 setArgument:&v16 atIndex:3];
  [v13 invokeWithTarget:self];
  v14 = [(AEAnnotation *)self annotationCreatorIdentifier];
  v15 = [v14 isEqualToString:v9];

  if ((v15 & 1) == 0)
  {
    [(AEAnnotation *)self setAnnotationCreatorIdentifier:v9];
  }
}

- (void)aeAnnotationDeserializeFromDictionary:(id)a3 trustedSource:(BOOL)a4
{
  v5 = a3;
  v38 = [(AEAnnotation *)self valueForKey:?];

  +[AEAnnotation requiredKeysForDictionaryRepresentation];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v6 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        v11 = [v5 valueForKey:v10];
        if (!v11 || (+[NSNull null], v12 = objc_claimAutoreleasedReturnValue(), v12, v11 == v12))
        {
          v13 = self;
          v14 = 0;
        }

        else
        {
          v13 = self;
          v14 = v11;
        }

        [(AEAnnotation *)v13 setValue:v14 forKey:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v7);
  }

  if (![(AEAnnotation *)self isAnnotationDeleted])
  {
    v15 = +[AEAnnotation optionalKeysForDictionaryRepresentation];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v45;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v44 + 1) + 8 * j);
          v21 = [v5 valueForKey:v20];
          if (v21)
          {
            v22 = +[NSNull null];

            if (v21 != v22)
            {
              [(AEAnnotation *)self setValue:v21 forKey:v20];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v17);
    }
  }

  v23 = +[AEAnnotation dateKeysForDictionaryRepresentation];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v40 + 1) + 8 * k);
        v29 = [v5 valueForKey:v28];
        if (v29)
        {
          v30 = +[NSNull null];

          if (v29 != v30)
          {
            v31 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v29 unsignedLongLongValue]);
            [(AEAnnotation *)self setValue:v31 forKey:v28];
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v25);
  }

  if (!v38)
  {
    v33 = [(AEAnnotation *)self annotationModificationDate];
    [(AEAnnotation *)self setUserModificationDate:v33];
    goto LABEL_44;
  }

  v32 = [v5 valueForKey:@"futureProofing6"];

  if (v32)
  {
    v33 = [v5 valueForKey:@"futureProofing6"];
    if ([v33 length])
    {
      [v33 doubleValue];
      v34 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
LABEL_41:
      v36 = v34;
      if (v34)
      {
        [(AEAnnotation *)self setUserModificationDate:v34];
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  v35 = [v5 valueForKey:@"annotationModificationDate"];

  if (v35)
  {
    v33 = [v5 valueForKey:@"annotationModificationDate"];
    v34 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v33 unsignedLongLongValue]);
    goto LABEL_41;
  }

LABEL_45:
  v37 = [(AEAnnotation *)self annotationModificationDate];
  [(AEAnnotation *)self setLocationModificationDate:v37];
}

+ (BOOL)isValidForDeserialization:(id)a3
{
  v4 = a3;
  v5 = [a1 deletedFlagFromDictionaryRepresentation:v4];
  if (![v5 BOOLValue])
  {
    objc_opt_class();
    v14 = [v4 objectForKeyedSubscript:@"locationBPlist"];
    v15 = BUDynamicCast();
    if (![v15 length])
    {
      objc_opt_class();
      v16 = [v4 objectForKeyedSubscript:@"plUserData"];
      v17 = BUDynamicCast();
      if (![v17 length])
      {
        objc_opt_class();
        v18 = [v4 objectForKeyedSubscript:@"annotationLocation"];
        v19 = BUDynamicCast();
        if (![v19 length])
        {
          v21 = [a1 deletedFlagFromDictionaryRepresentation:v4];
          v22 = [v21 BOOLValue];

          if ((v22 & 1) == 0)
          {
            v8 = BCIMLog();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              sub_1ED128(a1, v4, v8);
            }

            goto LABEL_5;
          }

LABEL_12:
          v13 = 1;
          goto LABEL_13;
        }
      }
    }

    goto LABEL_12;
  }

  v6 = [a1 lastModificationFromDictionaryRepresentation:v4];
  v7 = [v6 unsignedLongLongValue];

  if ([IMUserDataCull isTimestampNewerThanMaxDeletedAge:v7])
  {
    goto LABEL_12;
  }

  v8 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [objc_opt_class() annotationAssetIDFromDictionaryRepresentation:v4];
    v10 = [objc_opt_class() annotationUuidFromDictionaryRepresentation:v4];
    v11 = +[NSDate date];
    [v11 timeIntervalSince1970];
    *buf = 138412802;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 2048;
    v28 = ((v12 - v7) / 86400.0);
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ [%@] [Deleted %llu days ago]", buf, 0x20u);
  }

LABEL_5:

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)iBooks_dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(AEAnnotation *)self annotationAssetID];

  if (v4)
  {
    v5 = [(AEAnnotation *)self annotationAssetID];
    [v3 setObject:v5 forKey:@"bookDatabaseKey"];
  }

  v6 = [(AEAnnotation *)self annotationCreationDate];

  if (v6)
  {
    v7 = [(AEAnnotation *)self annotationCreationDate];
    [v7 timeIntervalSince1970];
    v9 = [NSNumber numberWithUnsignedLongLong:v8];
    [v3 setObject:v9 forKey:@"date"];
  }

  v10 = [(AEAnnotation *)self plLocationRangeStart];

  if (!v10)
  {
    v11 = [NSNumber numberWithInt:0];
    [(AEAnnotation *)self setPlLocationRangeStart:v11];
  }

  v12 = [(AEAnnotation *)self plLocationRangeStart];

  if (v12)
  {
    v13 = [(AEAnnotation *)self plLocationRangeStart];
    [v3 setObject:v13 forKey:@"ordinal"];
  }

  v14 = [objc_opt_class() bookmarkTypeFromAnnotationType:{-[AEAnnotation annotationType](self, "annotationType")}];
  if (v14)
  {
    [v3 setObject:v14 forKey:@"type"];
  }

  v15 = [(AEAnnotation *)self annotationModificationDate];

  if (!v15)
  {
    v16 = [(AEAnnotation *)self annotationCreationDate];
    [(AEAnnotation *)self setAnnotationModificationDate:v16];
  }

  v17 = [(AEAnnotation *)self annotationModificationDate];

  if (v17)
  {
    v18 = [(AEAnnotation *)self annotationModificationDate];
    [v18 timeIntervalSince1970];
    v20 = [NSNumber numberWithUnsignedLongLong:v19];
    [v3 setObject:v20 forKey:@"lastModification"];
  }

  v21 = [(AEAnnotation *)self userModificationDate];

  if (v21)
  {
    v22 = [(AEAnnotation *)self userModificationDate];
    [v22 timeIntervalSince1970];
    v24 = [NSNumber numberWithUnsignedLongLong:v23];
    [v3 setObject:v24 forKey:@"lastUserModification"];
  }

  if (![(AEAnnotation *)self isAnnotationDeleted])
  {
    v25 = [objc_opt_class() bookmarkColorFromAnnotationStyle:{-[AEAnnotation annotationStyle](self, "annotationStyle")}];
    if (v25)
    {
      [v3 setObject:v25 forKey:@"highlightColor"];
    }

    v26 = [NSNumber numberWithBool:[(AEAnnotation *)self annotationIsUnderline]];
    [v3 setObject:v26 forKey:@"annotationIsUnderline"];

    v27 = [(AEAnnotation *)self plUserData];

    if (v27)
    {
      v28 = [(AEAnnotation *)self plUserData];
      [v3 setObject:v28 forKey:@"locationBPlist"];
    }

    v29 = [(AEAnnotation *)self annotationSelectedText];
    v30 = [objc_opt_class() optimizedSelectedTextForSerialization:v29];

    v31 = [(AEAnnotation *)self annotationRepresentativeText];
    v32 = [objc_opt_class() optimizedRepresentativeTextForSerialization:v31 selectedText:v30];

    if (!v32)
    {
      if ([(AEAnnotation *)self annotationType]== 2)
      {
        v32 = &stru_2D2930;
      }

      else
      {
        v32 = 0;
      }
    }

    if (v30)
    {
      [v3 setObject:v30 forKey:@"text"];
    }

    if (v32)
    {
      [v3 setObject:v32 forKey:@"textualContext"];
    }
  }

  v33 = [NSNumber numberWithBool:[(AEAnnotation *)self isAnnotationDeleted]];
  [v3 setObject:v33 forKey:@"deletedFlag"];

  [(AEAnnotation *)self validateAnnotationUuid];
  v34 = [(AEAnnotation *)self annotationUuid];
  [v3 setObject:v34 forKey:@"serverSyncUniqueId"];

  v35 = [(AEAnnotation *)self annotationNote];

  if (v35)
  {
    v36 = [(AEAnnotation *)self annotationNote];
    [v3 setObject:v36 forKey:@"annotation"];
  }

  return v3;
}

- (id)doesSerializeAs_iBooks
{
  v3 = [(AEAnnotation *)self annotationCreatorIdentifier];
  v4 = [objc_opt_class() isBKBookmarkCreatorIdentifier:v3];
  v5 = [(AEAnnotation *)self annotationVersion];

  v6 = (v5 == 0) & v4;
  if (v5 && (v4 & 1) != 0)
  {
    v7 = [(AEAnnotation *)self annotationVersion];
    v6 = [v7 compare:@"3" options:64] == -1;
  }

  v8 = [NSNumber numberWithBool:v6];

  return v8;
}

- (void)iBooks_deserializeFromDictionary:(id)a3 trustedSource:(BOOL)a4
{
  v4 = a4;
  v34 = a3;
  v6 = [(AEAnnotation *)self valueForKey:@"futureProofing6"];

  v7 = [v34 objectForKey:@"bookDatabaseKey"];
  [(AEAnnotation *)self setAnnotationAssetID:v7];

  v8 = objc_opt_class();
  v9 = [v34 objectForKey:@"highlightColor"];
  -[AEAnnotation setAnnotationStyle:](self, "setAnnotationStyle:", [v8 annotationStyleFromBookmarkColor:v9]);

  v10 = [v34 valueForKey:@"annotationIsUnderline"];
  -[AEAnnotation setAnnotationIsUnderline:](self, "setAnnotationIsUnderline:", [v10 BOOLValue]);

  v11 = [v34 objectForKey:@"date"];
  v12 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v11 unsignedLongLongValue]);
  [(AEAnnotation *)self setAnnotationCreationDate:v12];

  v13 = [(AEAnnotation *)self bkBookmarkDeserializeLocationDataFromDictionary:v34 trustedSource:v4];
  [(AEAnnotation *)self setPlUserData:v13];

  v14 = [v34 objectForKey:@"ordinal"];
  [(AEAnnotation *)self setPlLocationRangeStart:v14];

  v15 = [v34 objectForKey:@"text"];
  [(AEAnnotation *)self setAnnotationSelectedText:v15];

  v16 = [v34 objectForKey:@"textualContext"];
  if ([v16 length])
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [(AEAnnotation *)self setAnnotationRepresentativeText:v17];
  v18 = objc_opt_class();
  v19 = [v34 objectForKey:@"type"];
  -[AEAnnotation setAnnotationType:](self, "setAnnotationType:", [v18 annotationTypeFromBookmarkType:v19]);

  if (![(AEAnnotation *)self annotationStyle]&& ![(AEAnnotation *)self annotationIsUnderline]&& [(AEAnnotation *)self annotationType]== 2)
  {
    [(AEAnnotation *)self setAnnotationIsUnderline:1];
  }

  if (![(AEAnnotation *)self annotationType])
  {
    v20 = [(AEAnnotation *)self annotationSelectedText];
    if (v20)
    {

      v21 = 2;
    }

    else
    {
      v22 = [(AEAnnotation *)self annotationRepresentativeText];

      if (v22)
      {
        v21 = 2;
      }

      else
      {
        v21 = 3;
      }
    }

    [(AEAnnotation *)self setAnnotationType:v21];
  }

  v23 = [v34 objectForKey:@"deletedFlag"];
  v24 = [v23 BOOLValue];

  [(AEAnnotation *)self setAnnotationDeleted:v24];
  v25 = [v34 objectForKey:@"annotation"];
  [(AEAnnotation *)self setAnnotationNote:v25];

  v26 = [v34 objectForKey:@"serverSyncUniqueId"];
  [(AEAnnotation *)self setAnnotationUuid:v26];

  [(AEAnnotation *)self validateAnnotationUuid];
  v27 = [v34 objectForKey:@"lastModification"];
  v28 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v27 unsignedLongLongValue]);
  [(AEAnnotation *)self setAnnotationModificationDate:v28];

  if (!v6)
  {
    v30 = [(AEAnnotation *)self annotationModificationDate];
    [(AEAnnotation *)self setUserModificationDate:v30];
    goto LABEL_21;
  }

  v29 = [v34 valueForKey:@"lastUserModification"];

  if (v29)
  {
    v30 = [v34 objectForKey:@"lastUserModification"];
    v31 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v30 unsignedLongLongValue]);
LABEL_18:
    [(AEAnnotation *)self setUserModificationDate:v31];
LABEL_19:

LABEL_21:
    goto LABEL_22;
  }

  v33 = [v34 valueForKey:@"lastModification"];

  if (v33)
  {
    v30 = [v34 valueForKey:@"lastModification"];
    v31 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v30 unsignedLongLongValue]);
    if (!v31)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_22:
  v32 = [(AEAnnotation *)self annotationModificationDate];
  [(AEAnnotation *)self setLocationModificationDate:v32];
}

- (id)bkBookmarkDeserializeLocationDataFromDictionary:(id)a3 trustedSource:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(AEAnnotation *)self preferredDeserializedLocationDataFromDictionary:v6 trustedSource:v4];
  }

  else
  {
    [v6 objectForKey:@"locationBPlist"];
  }
  v7 = ;

  return v7;
}

+ (int)annotationStyleFromBookmarkColor:(id)a3
{
  result = [a3 intValue];
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

+ (id)bookmarkColorFromAnnotationStyle:(int)a3
{
  if ((a3 - 1) >= 5)
  {
    *&a3 = 0;
  }

  else
  {
    v3 = a3;
  }

  return [NSNumber numberWithInt:*&a3];
}

+ (int)annotationTypeFromBookmarkType:(id)a3
{
  v3 = [a3 intValue] - 1;
  if (v3 > 2)
  {
    return 0;
  }

  else
  {
    return dword_2A4620[v3];
  }
}

+ (id)bookmarkTypeFromAnnotationType:(int)a3
{
  if ((a3 - 1) > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_2A462C[a3 - 1];
  }

  return [NSNumber numberWithInt:v3];
}

+ (id)annotationUuidFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"serverSyncUniqueId"];
  if (![v4 length])
  {
    v5 = [v3 objectForKey:@"annotationUuid"];

    v4 = v5;
  }

  return v4;
}

+ (id)annotationAssetIDFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"bookDatabaseKey"];
  if (![v4 length])
  {
    v5 = [v3 objectForKey:@"annotationAssetID"];

    v4 = v5;
  }

  return v4;
}

+ (id)lastModificationFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"lastModification"];
  if (!v4)
  {
    v4 = [v3 objectForKey:@"annotationModificationDate"];
  }

  return v4;
}

+ (id)deletedFlagFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"deletedFlag"];
  if (!v4)
  {
    v4 = [v3 objectForKey:@"annotationDeleted"];
  }

  return v4;
}

+ (id)annotationCreatorIdentifierFromDictionaryRepresentation:(id)a3
{
  v3 = [a3 objectForKey:@"annotationCreatorIdentifier"];
  if (![v3 length])
  {
    v4 = @"com~apple~iBooks";

    v3 = v4;
  }

  return v3;
}

+ (int)annotationTypeFromDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"type"];
  if (v5)
  {
    v6 = v5;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [a1 annotationTypeFromBookmarkType:v6];
  }

  else
  {
    v6 = [v4 objectForKey:@"annotationType"];
    v7 = [v6 intValue];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

- (id)validateAnnotationUuid
{
  v3 = [(AEAnnotation *)self annotationUuid];
  if (![v3 length])
  {
    if ([(AEAnnotation *)self annotationType]== 3)
    {
      v4 = @"Reading Location";
    }

    else
    {
      v5 = [(AEAnnotation *)self plUserData];
      v6 = [v5 bytes];
      v7 = [(AEAnnotation *)self plUserData];
      v8 = crc32(0, v6, [v7 length]);

      v9 = [(AEAnnotation *)self annotationCreationDate];
      [v9 timeIntervalSince1970];
      v4 = [NSString stringWithFormat:@"%d-crc32(%08x)", v10, v8];

      v3 = v9;
    }

    [(AEAnnotation *)self setAnnotationUuid:v4];
    v3 = v4;
  }

  return v3;
}

+ (BOOL)isBKBookmarkCreatorIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isEqualToString:@"com~apple~iBooks"] & 1) == 0)
  {
    v5 = [v4 isEqualToString:@"com.apple.iBooks"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end