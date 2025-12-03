@interface AEAnnotation
+ (BOOL)isBKBookmarkCreatorIdentifier:(id)identifier;
+ (BOOL)isSelectedTextRepeatedInRepresentativeTextForAnnotation:(id)annotation;
+ (BOOL)isValidForDeserialization:(id)deserialization;
+ (BOOL)mergeAnnotation:(id)annotation withServerAnnotation:(id)serverAnnotation moc:(id)moc;
+ (BOOL)mergeServerAnnotations:(id)annotations forAssetID:(id)d intoMoc:(id)moc;
+ (id)_dictionaryRepresentationForAnnotationsMatchingPredicate:(id)predicate map:(id)map inManagedObjectContext:(id)context;
+ (id)aeAnnotationDictionaryRepresentationsForAnnotations:(id)annotations;
+ (id)annotatedAttributedStringForAnnotation:(id)annotation;
+ (id)annotatedAttributedStringForAnnotation:(id)annotation withPossibleLength:(unint64_t)length;
+ (id)annotatedAttributedStringWithString:(id)string annotationStyle:(int)style range:(_NSRange)range;
+ (id)annotationAssetIDFromDictionaryRepresentation:(id)representation;
+ (id)annotationCreatorIdentifierFromDictionaryRepresentation:(id)representation;
+ (id)annotationIncludingDeletedWithUUID:(id)d assetID:(id)iD inManagedObjectContext:(id)context;
+ (id)annotationUuidFromDictionaryRepresentation:(id)representation;
+ (id)annotationsForAssetID:(id)d includingDeleted:(BOOL)deleted inManagedObjectContext:(id)context;
+ (id)annotationsIncludingDeletedWithUUIDInList:(id)list assetID:(id)d inManagedObjectContext:(id)context;
+ (id)annotationsWithAssetIDInList:(id)list includingDeleted:(BOOL)deleted inManagedObjectContext:(id)context;
+ (id)bookmarkColorFromAnnotationStyle:(int)style;
+ (id)bookmarkTypeFromAnnotationType:(int)type;
+ (id)clauseForSelectedTextForAnnotation:(id)annotation inSentence:(id)sentence possibleLength:(unint64_t)length highlightedRange:(_NSRange *)range;
+ (id)compatibleDictionaryRepresentationForAnnotationsMatchingPredicate:(id)predicate inManagedObjectContext:(id)context;
+ (id)contextAwareSelectedTextFromAnnotation:(id)annotation;
+ (id)deletedFlagFromDictionaryRepresentation:(id)representation;
+ (id)dictionaryRepresentationsForAnnotations:(id)annotations;
+ (id)dictionaryResultsForAnnotationsWithPredicate:(id)predicate properties:(id)properties propertyNamesMap:(id)map inManagedObjectContext:(id)context;
+ (id)dictionaryResultsForAssetsWithPredicate:(id)predicate properties:(id)properties inManagedObjectContext:(id)context;
+ (id)globalAnnotationForAssetID:(id)d inManagedObjectContext:(id)context;
+ (id)globalAnnotationTypeValues;
+ (id)insertAnnotationWithAssetID:(id)d creatorIdentifier:(id)identifier annotationUuid:(id)uuid intoManagedObjectContext:(id)context;
+ (id)lastModificationFromDictionaryRepresentation:(id)representation;
+ (id)lettersForSelectedTextForAnnotation:(id)annotation inSentence:(id)sentence possibleLength:(unint64_t)length highlightedRange:(_NSRange *)range;
+ (id)maxAnnotationVersionForAssetsWithPredicate:(id)predicate inManagedObjectContext:(id)context;
+ (id)maxExpressionDescriptionForProperty:(id)property expressionName:(id)name;
+ (id)maxModificationDateExpressionDescription;
+ (id)maxModificationDateForAllAnnotationsInManagedObjectContext:(id)context;
+ (id)maxModificationDateForAssetsWithPredicate:(id)predicate inManagedObjectContext:(id)context;
+ (id)maxUserModificationDateExpressionDescription;
+ (id)optimizedRepresentativeTextForSerialization:(id)serialization selectedText:(id)text;
+ (id)optimizedSelectedTextForSerialization:(id)serialization;
+ (id)predicateForAnnotationIncludingDeletedWithUUID:(id)d assetID:(id)iD;
+ (id)predicateForAnnotationsIncludingDeletedWithUUIDInList:(id)list assetID:(id)d;
+ (id)predicateForUserAnnotationsWithAssetID:(id)d includingDeleted:(BOOL)deleted;
+ (id)predicateForUserAnnotationsWithAssetIDInList:(id)list includingDeleted:(BOOL)deleted;
+ (id)userAnnotationTypeValues;
+ (id)wordsForSelectedTextForAnnotation:(id)annotation inSentence:(id)sentence possibleLength:(unint64_t)length highlightedRange:(_NSRange *)range;
+ (int)annotationStyleFromBookmarkColor:(id)color;
+ (int)annotationTypeFromBookmarkType:(id)type;
+ (int)annotationTypeFromDictionaryRepresentation:(id)representation;
- (AEAnnotationManagedObjectContext)managedObjectContext;
- (BOOL)annotationDeleted;
- (BOOL)annotationHasNote;
- (BOOL)annotationIsBookmark;
- (BOOL)annotationIsUnderline;
- (BOOL)avoidSync;
- (BOOL)bumpAnnotationVersionToMinimumVersion:(id)version;
- (BOOL)hasReadingProgress;
- (BOOL)hasReadingProgressHighWaterMark;
- (BOOL)isValidForSerialization;
- (BOOL)spineIndexUpdated;
- (BOOL)updateReadingProgressAndBumpHighWaterMarkToProgress:(float)progress;
- (BOOL)usesLegacySerializationMethod;
- (BOOL)validateConsistency:(id *)consistency;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
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
- (id)bkBookmarkDeserializeLocationDataFromDictionary:(id)dictionary trustedSource:(BOOL)source;
- (id)doesSerializeAs_iBooks;
- (id)iBooks_dictionaryRepresentation;
- (id)validateAnnotationUuid;
- (int)annotationStyle;
- (int)annotationType;
- (void)aeAnnotationDeserializeFromDictionary:(id)dictionary trustedSource:(BOOL)source;
- (void)awakeFromInsert;
- (void)clearAvoidSync;
- (void)deserializeFromDictionary:(id)dictionary trustedSource:(BOOL)source;
- (void)iBooks_deserializeFromDictionary:(id)dictionary trustedSource:(BOOL)source;
- (void)setAnnotationCreationDate:(id)date;
- (void)setAnnotationDeleted:(BOOL)deleted;
- (void)setAnnotationIsUnderline:(BOOL)underline;
- (void)setAnnotationLocation:(id)location;
- (void)setAnnotationNote:(id)note;
- (void)setAnnotationRepresentativeText:(id)text;
- (void)setAnnotationSelectedText:(id)text;
- (void)setAnnotationSelectedTextRange:(_NSRange)range;
- (void)setAnnotationStyle:(int)style;
- (void)setAnnotationType:(int)type;
- (void)setAnnotationVersion:(id)version;
- (void)setAssetVersion:(id)version;
- (void)setAttachments:(id)attachments;
- (void)setAvoidSync;
- (void)setChapterTitle:(id)title;
- (void)setFutureProofing10:(id)proofing10;
- (void)setFutureProofing11:(id)proofing11;
- (void)setFutureProofing12:(id)proofing12;
- (void)setFutureProofing1:(id)proofing1;
- (void)setFutureProofing2:(id)proofing2;
- (void)setFutureProofing3:(id)proofing3;
- (void)setFutureProofing4:(id)proofing4;
- (void)setFutureProofing5:(id)proofing5;
- (void)setFutureProofing6:(id)proofing6;
- (void)setFutureProofing7:(id)proofing7;
- (void)setFutureProofing8:(id)proofing8;
- (void)setFutureProofing9:(id)proofing9;
- (void)setLocationModificationDate:(id)date;
- (void)setPhysicalPageNumber:(id)number;
- (void)setPlAbsolutePhysicalLocation:(id)location;
- (void)setPlLocationRangeEnd:(id)end;
- (void)setPlLocationRangeStart:(id)start;
- (void)setPlStorageUUID:(id)d;
- (void)setPlUserData:(id)data;
- (void)setReadingProgress:(float)progress;
- (void)setReadingProgressHighWaterMark:(float)mark;
- (void)setSpineIndexUpdated:(BOOL)updated;
- (void)setUserModificationDate:(id)date;
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

+ (id)predicateForAnnotationIncludingDeletedWithUUID:(id)d assetID:(id)iD
{
  if (iD)
  {
    [NSPredicate predicateWithFormat:@"annotationAssetID == %@ AND annotationUuid == %@", iD, d];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"annotationUuid == %@ AND annotationType != %d ", d, 3];
  }
  v4 = ;

  return v4;
}

+ (id)predicateForAnnotationsIncludingDeletedWithUUIDInList:(id)list assetID:(id)d
{
  if (d)
  {
    [NSPredicate predicateWithFormat:@"annotationUuid IN %@ AND annotationAssetID == %@", list, d];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"annotationUuid IN %@ AND annotationType != %d", list, 3];
  }
  v4 = ;

  return v4;
}

+ (id)predicateForUserAnnotationsWithAssetID:(id)d includingDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  dCopy = d;
  userAnnotationTypeValues = [self userAnnotationTypeValues];
  v8 = userAnnotationTypeValues;
  if (deletedCopy)
  {
    v9 = @"annotationAssetID == %@ AND annotationType IN %@";
  }

  else
  {
    v9 = @"annotationAssetID == %@ AND annotationType IN %@ AND annotationDeleted == 0";
  }

  v10 = [NSPredicate predicateWithFormat:v9, dCopy, userAnnotationTypeValues];

  return v10;
}

+ (id)predicateForUserAnnotationsWithAssetIDInList:(id)list includingDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  listCopy = list;
  userAnnotationTypeValues = [self userAnnotationTypeValues];
  deletedCopy = [NSPredicate predicateWithFormat:@"annotationAssetID IN (%@) AND annotationType IN (%@) and (1 == %d OR annotationDeleted == 0)", listCopy, userAnnotationTypeValues, deletedCopy];

  return deletedCopy;
}

+ (id)dictionaryResultsForAssetsWithPredicate:(id)predicate properties:(id)properties inManagedObjectContext:(id)context
{
  predicateCopy = predicate;
  propertiesCopy = properties;
  contextCopy = context;
  if (contextCopy)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = objc_alloc_init(NSFetchRequest);
    v12 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:contextCopy];
    [v11 setEntity:v12];
    [v11 setResultType:2];
    [v11 setPropertiesToFetch:propertiesCopy];
    [v11 setReturnsDistinctResults:1];
    [v11 setPredicate:predicateCopy];
    v15 = 0;
    v13 = [contextCopy executeFetchRequest:v11 error:&v15];

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)annotationIncludingDeletedWithUUID:(id)d assetID:(id)iD inManagedObjectContext:(id)context
{
  contextCopy = context;
  v9 = [self predicateForAnnotationIncludingDeletedWithUUID:d assetID:iD];
  v10 = [self annotationsForPredicate:v9 inManagedObjectContext:contextCopy];

  lastObject = [v10 lastObject];

  return lastObject;
}

+ (id)annotationsForAssetID:(id)d includingDeleted:(BOOL)deleted inManagedObjectContext:(id)context
{
  deletedCopy = deleted;
  contextCopy = context;
  v9 = [self predicateForAnnotationsWithAssetID:d includingDeleted:deletedCopy];
  v10 = [self annotationsForPredicate:v9 inManagedObjectContext:contextCopy];

  return v10;
}

+ (id)annotationsWithAssetIDInList:(id)list includingDeleted:(BOOL)deleted inManagedObjectContext:(id)context
{
  deletedCopy = deleted;
  contextCopy = context;
  v9 = [self predicateForAnnotationsWithAssetIDInList:list includingDeleted:deletedCopy];
  v10 = [self annotationsForPredicate:v9 inManagedObjectContext:contextCopy];

  return v10;
}

+ (id)annotationsIncludingDeletedWithUUIDInList:(id)list assetID:(id)d inManagedObjectContext:(id)context
{
  contextCopy = context;
  v9 = [self predicateForAnnotationsIncludingDeletedWithUUIDInList:list assetID:d];
  v10 = [self annotationsForPredicate:v9 inManagedObjectContext:contextCopy];

  return v10;
}

+ (id)globalAnnotationForAssetID:(id)d inManagedObjectContext:(id)context
{
  contextCopy = context;
  v7 = [self predicateForGlobalAnnotationWithAssetID:d];
  v8 = [self annotationsForPredicate:v7 inManagedObjectContext:contextCopy];

  lastObject = [v8 lastObject];

  return lastObject;
}

+ (id)maxExpressionDescriptionForProperty:(id)property expressionName:(id)name
{
  nameCopy = name;
  v6 = [NSExpression expressionForKeyPath:property];
  v7 = [NSArray arrayWithObject:v6];
  v8 = [NSExpression expressionForFunction:@"max:" arguments:v7];

  v9 = objc_alloc_init(NSExpressionDescription);
  [v9 setName:nameCopy];

  [v9 setExpression:v8];

  return v9;
}

+ (id)maxModificationDateExpressionDescription
{
  maxModificationDateColumnName = [self maxModificationDateColumnName];
  v4 = [self maxExpressionDescriptionForProperty:@"annotationModificationDate" expressionName:maxModificationDateColumnName];

  [v4 setExpressionResultType:900];

  return v4;
}

+ (id)maxUserModificationDateExpressionDescription
{
  maxModificationDateColumnName = [self maxModificationDateColumnName];
  v4 = [self maxExpressionDescriptionForProperty:@"futureProofing6" expressionName:maxModificationDateColumnName];

  [v4 setExpressionResultType:900];

  return v4;
}

+ (id)maxModificationDateForAssetsWithPredicate:(id)predicate inManagedObjectContext:(id)context
{
  predicateCopy = predicate;
  contextCopy = context;
  if (contextCopy)
  {
    context = objc_autoreleasePoolPush();
    v7 = +[AEAnnotation maxModificationDateColumnName];
    v8 = +[AEAnnotation maxModificationDateExpressionDescription];
    v9 = objc_alloc_init(NSFetchRequest);
    v24 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:contextCopy];
    [v9 setEntity:?];
    [v9 setResultType:2];
    v10 = [NSArray arrayWithObjects:@"annotationAssetID", @"annotationModificationDate", 0];
    [v9 setPropertiesToGroupBy:v10];

    v25 = v8;
    v11 = [NSArray arrayWithObjects:v8, @"annotationAssetID", 0];
    [v9 setPropertiesToFetch:v11];

    [v9 setReturnsDistinctResults:1];
    v28 = predicateCopy;
    [v9 setPredicate:predicateCopy];
    v33 = 0;
    v27 = contextCopy;
    v12 = [contextCopy executeFetchRequest:v9 error:&v33];
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
    contextCopy = v27;
    predicateCopy = v28;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)maxAnnotationVersionForAssetsWithPredicate:(id)predicate inManagedObjectContext:(id)context
{
  predicateCopy = predicate;
  contextCopy = context;
  if (contextCopy)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc_init(NSMutableDictionary);
    v32 = [self maxExpressionDescriptionForProperty:@"futureProofing2" expressionName:@"futureProofing2"];
    [v32 setExpressionResultType:700];
    v10 = objc_alloc_init(NSFetchRequest);
    v31 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:contextCopy];
    [v10 setEntity:?];
    [v10 setResultType:2];
    [v10 setReturnsDistinctResults:1];
    [v10 setPredicate:predicateCopy];
    v11 = [NSArray arrayWithObjects:@"annotationAssetID", @"futureProofing2", 0];
    [v10 setPropertiesToGroupBy:v11];

    v12 = [NSArray arrayWithObjects:@"annotationAssetID", @"futureProofing2", 0];
    [v10 setPropertiesToFetch:v12];

    v37 = 0;
    v13 = [contextCopy executeFetchRequest:v10 error:&v37];
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
        v29 = predicateCopy;
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
        predicateCopy = v29;
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

+ (id)maxModificationDateForAllAnnotationsInManagedObjectContext:(id)context
{
  contextCopy = context;
  v4 = +[AEAnnotation maxModificationDateExpressionDescription];
  v5 = [NSPredicate predicateWithValue:1];
  v6 = [NSArray arrayWithObject:v4];
  v7 = [AEAnnotation dictionaryResultsForAssetsWithPredicate:v5 properties:v6 inManagedObjectContext:contextCopy];

  lastObject = [v7 lastObject];

  v9 = +[AEAnnotation maxModificationDateColumnName];
  v10 = [lastObject objectForKey:v9];

  return v10;
}

+ (id)insertAnnotationWithAssetID:(id)d creatorIdentifier:(id)identifier annotationUuid:(id)uuid intoManagedObjectContext:(id)context
{
  uuidCopy = uuid;
  contextCopy = context;
  identifierCopy = identifier;
  dCopy = d;
  v13 = [contextCopy newByClass:objc_opt_class()];

  [v13 setAnnotationCreatorIdentifier:identifierCopy];
  [v13 setAnnotationAssetID:dCopy];

  if (uuidCopy)
  {
    [v13 setAnnotationUuid:uuidCopy];
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
  managedObjectContext = [(AEAnnotation *)&v4 managedObjectContext];

  return managedObjectContext;
}

+ (id)optimizedSelectedTextForSerialization:(id)serialization
{
  serializationCopy = serialization;
  if ([serializationCopy length] >= 0x1389)
  {
    v4 = [serializationCopy substringWithRange:{0, 5000}];

    serializationCopy = v4;
  }

  return serializationCopy;
}

+ (id)optimizedRepresentativeTextForSerialization:(id)serialization selectedText:(id)text
{
  serializationCopy = serialization;
  textCopy = text;
  if ([serializationCopy length] > 0x1388 || objc_msgSend(serializationCopy, "isEqualToString:", textCopy))
  {

    serializationCopy = 0;
  }

  return serializationCopy;
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

- (void)setAnnotationStyle:(int)style
{
  if (style == 6)
  {
    styleCopy = 0;
  }

  else
  {
    styleCopy = style;
  }

  v16 = [NSNumber numberWithBool:style == 6];
  v5 = [NSNumber numberWithInt:styleCopy];
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
    selfCopy2 = self;
    v15 = v16;
    goto LABEL_16;
  }

  if (v7 != v5 && ([v7 isEqual:v5] & 1) == 0)
  {
LABEL_11:
    v13 = @"annotationStyle";
    [(AEAnnotation *)self willChangeValueForKey:@"annotationStyle"];
    selfCopy2 = self;
    v15 = v5;
LABEL_16:
    [(AEAnnotation *)selfCopy2 setPrimitiveValue:v15 forKey:v13];
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
  intValue = [v4 intValue];

  [(AEAnnotation *)self didAccessValueForKey:@"annotationStyle"];
  return intValue;
}

- (void)setAnnotationType:(int)type
{
  v3 = *&type;
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
  intValue = [v3 intValue];

  [(AEAnnotation *)self didAccessValueForKey:@"annotationType"];
  return intValue;
}

- (void)setAnnotationCreationDate:(id)date
{
  dateCopy = date;
  [(AEAnnotation *)self willChangeValueForKey:@"annotationCreationDate"];
  [(AEAnnotation *)self setPrimitiveValue:dateCopy forKey:@"annotationCreationDate"];

  [(AEAnnotation *)self didChangeValueForKey:@"annotationCreationDate"];
}

- (BOOL)annotationDeleted
{
  [(AEAnnotation *)self willAccessValueForKey:@"annotationDeleted"];
  v3 = [(AEAnnotation *)self primitiveValueForKey:@"annotationDeleted"];
  bOOLValue = [v3 BOOLValue];

  [(AEAnnotation *)self didAccessValueForKey:@"annotationDeleted"];
  return bOOLValue;
}

- (void)setAnnotationDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  v6 = [(AEAnnotation *)self primitiveValueForKey:@"annotationDeleted"];
  v5 = [NSNumber numberWithBool:deletedCopy];
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
  bOOLValue = [v3 BOOLValue];

  [(AEAnnotation *)self didAccessValueForKey:@"annotationIsUnderline"];
  return bOOLValue;
}

- (void)setAnnotationIsUnderline:(BOOL)underline
{
  underlineCopy = underline;
  v6 = [(AEAnnotation *)self primitiveValueForKey:@"annotationIsUnderline"];
  v5 = [NSNumber numberWithBool:underlineCopy];
  if (v6 != v5 && ([v6 isEqual:v5] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"annotationIsUnderline"];
    [(AEAnnotation *)self setPrimitiveValue:v5 forKey:@"annotationIsUnderline"];
    [(AEAnnotation *)self didChangeValueForKey:@"annotationIsUnderline"];
    [(AEAnnotation *)self updateSystemAndUserModificationDates];
  }
}

- (void)setAnnotationLocation:(id)location
{
  locationCopy = location;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"annotationLocation"];
  v6 = v5;
  if (v5 != locationCopy && ([v5 isEqualToString:locationCopy] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"annotationLocation"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:locationCopy forKey:@"annotationLocation"];
    [(AEAnnotation *)self didChangeValueForKey:@"annotationLocation"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (NSString)redactedAnnotationLocation
{
  annotationLocation = [(AEAnnotation *)self annotationLocation];
  bc_redactedCFIString = [annotationLocation bc_redactedCFIString];

  return bc_redactedCFIString;
}

- (BOOL)annotationHasNote
{
  annotationNote = [(AEAnnotation *)self annotationNote];
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = [annotationNote stringByTrimmingCharactersInSet:v3];
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

- (void)setAnnotationNote:(id)note
{
  noteCopy = note;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"annotationNote"];
  v6 = v5;
  if (v5 != noteCopy && ([v5 isEqualToString:noteCopy] & 1) == 0)
  {
    [(AEAnnotation *)self updateSystemAndUserModificationDates];
    [(AEAnnotation *)self willChangeValueForKey:@"annotationNote"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:noteCopy forKey:@"annotationNote"];
    [(AEAnnotation *)self didChangeValueForKey:@"annotationNote"];
  }
}

- (void)setAnnotationRepresentativeText:(id)text
{
  textCopy = text;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"annotationRepresentativeText"];
  v6 = v5;
  if (v5 != textCopy && ([v5 isEqualToString:textCopy] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"annotationRepresentativeText"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:textCopy forKey:@"annotationRepresentativeText"];
    [(AEAnnotation *)self didChangeValueForKey:@"annotationRepresentativeText"];
    [(AEAnnotation *)self updateSystemModificationDate];
  }
}

- (void)setAnnotationSelectedText:(id)text
{
  textCopy = text;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"annotationSelectedText"];
  v6 = v5;
  if (v5 != textCopy && ([v5 isEqualToString:textCopy] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"annotationSelectedText"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:textCopy forKey:@"annotationSelectedText"];
    [(AEAnnotation *)self didChangeValueForKey:@"annotationSelectedText"];
    [(AEAnnotation *)self updateSystemModificationDate];
  }
}

- (void)setPlLocationRangeStart:(id)start
{
  startCopy = start;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"plLocationRangeStart"];
  v6 = v5;
  if (v5 != startCopy && ([v5 isEqual:startCopy] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"plLocationRangeStart"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:startCopy forKey:@"plLocationRangeStart"];
    [(AEAnnotation *)self didChangeValueForKey:@"plLocationRangeStart"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (void)setPlLocationRangeEnd:(id)end
{
  endCopy = end;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"plLocationRangeEnd"];
  v6 = v5;
  if (v5 != endCopy && ([v5 isEqual:endCopy] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"plLocationRangeEnd"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:endCopy forKey:@"plLocationRangeEnd"];
    [(AEAnnotation *)self didChangeValueForKey:@"plLocationRangeEnd"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (void)setPlAbsolutePhysicalLocation:(id)location
{
  locationCopy = location;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"plAbsolutePhysicalLocation"];
  v6 = v5;
  if (v5 != locationCopy && ([v5 isEqual:locationCopy] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"plAbsolutePhysicalLocation"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:locationCopy forKey:@"plAbsolutePhysicalLocation"];
    [(AEAnnotation *)self didChangeValueForKey:@"plAbsolutePhysicalLocation"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (void)setPlStorageUUID:(id)d
{
  dCopy = d;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"plStorageUUID"];
  v6 = v5;
  if (v5 != dCopy && ([v5 isEqualToString:dCopy] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"plStorageUUID"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:dCopy forKey:@"plStorageUUID"];
    [(AEAnnotation *)self didChangeValueForKey:@"plStorageUUID"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (void)setPlUserData:(id)data
{
  dataCopy = data;
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"plUserData"];
  v6 = v5;
  if (v5 != dataCopy && ([v5 isEqual:dataCopy] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"plUserData"];
    v7.receiver = self;
    v7.super_class = AEAnnotation;
    [(AEAnnotation *)&v7 setPrimitiveValue:dataCopy forKey:@"plUserData"];
    [(AEAnnotation *)self didChangeValueForKey:@"plUserData"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (void)setPhysicalPageNumber:(id)number
{
  numberCopy = number;
  v4 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing1"];
  if (v4 != numberCopy && ([v4 isEqualToString:numberCopy] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing1"];
    [(AEAnnotation *)self setPrimitiveValue:numberCopy forKey:@"futureProofing1"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing1"];
    [(AEAnnotation *)self updateSystemAndLocationModificationDates];
  }
}

- (void)setAnnotationVersion:(id)version
{
  versionCopy = version;
  v4 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing2"];
  if (v4 != versionCopy && ([v4 isEqualToString:versionCopy] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing2"];
    [(AEAnnotation *)self setPrimitiveValue:versionCopy forKey:@"futureProofing2"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing2"];
    [(AEAnnotation *)self updateSystemModificationDate];
  }
}

- (void)setAssetVersion:(id)version
{
  versionCopy = version;
  v4 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing3"];
  if (v4 != versionCopy && ([v4 isEqualToString:versionCopy] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing3"];
    [(AEAnnotation *)self setPrimitiveValue:versionCopy forKey:@"futureProofing3"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing3"];
    [(AEAnnotation *)self updateSystemModificationDate];
  }
}

- (void)setAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v4 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing4"];
  if (v4 != attachmentsCopy && ([v4 isEqualToString:attachmentsCopy] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing4"];
    [(AEAnnotation *)self setPrimitiveValue:attachmentsCopy forKey:@"futureProofing4"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing4"];
    [(AEAnnotation *)self updateSystemModificationDate];
  }
}

- (void)setChapterTitle:(id)title
{
  titleCopy = title;
  v4 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing5"];
  if (v4 != titleCopy && ([v4 isEqualToString:titleCopy] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing5"];
    [(AEAnnotation *)self setPrimitiveValue:titleCopy forKey:@"futureProofing5"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing5"];
    [(AEAnnotation *)self updateSystemModificationDate];
  }
}

- (void)setUserModificationDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
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

- (void)setAnnotationSelectedTextRange:(_NSRange)range
{
  v5 = NSStringFromRange(range);
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

- (void)setReadingProgressHighWaterMark:(float)mark
{
  v4 = [NSNumber numberWithFloat:?];
  bc_clampedToUnitIntervalOrNegativeOne = [v4 bc_clampedToUnitIntervalOrNegativeOne];

  stringValue = [bc_clampedToUnitIntervalOrNegativeOne stringValue];
  v6 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing8"];
  v7 = v6;
  if (v6 != stringValue && ([v6 isEqualToString:stringValue] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing8"];
    [(AEAnnotation *)self setPrimitiveValue:stringValue forKey:@"futureProofing8"];
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

- (void)setReadingProgress:(float)progress
{
  v4 = [NSNumber numberWithFloat:?];
  bc_assertClampedToUnitInterval = [v4 bc_assertClampedToUnitInterval];

  stringValue = [bc_assertClampedToUnitInterval stringValue];
  v6 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing10"];
  v7 = v6;
  if (v6 != stringValue && ([v6 isEqualToString:stringValue] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing10"];
    [(AEAnnotation *)self setPrimitiveValue:stringValue forKey:@"futureProofing10"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing10"];
  }
}

- (BOOL)spineIndexUpdated
{
  v2 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing9"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setSpineIndexUpdated:(BOOL)updated
{
  v7 = [NSNumber numberWithBool:updated];
  stringValue = [v7 stringValue];
  v5 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing9"];
  v6 = v5;
  if (v5 != stringValue && ([v5 isEqualToString:stringValue] & 1) == 0)
  {
    [(AEAnnotation *)self willChangeValueForKey:@"futureProofing9"];
    [(AEAnnotation *)self setPrimitiveValue:stringValue forKey:@"futureProofing9"];
    [(AEAnnotation *)self didChangeValueForKey:@"futureProofing9"];
  }
}

- (void)setLocationModificationDate:(id)date
{
  dateCopy = date;
  v9 = dateCopy;
  if (dateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
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

- (void)setFutureProofing1:(id)proofing1
{
  proofing1Copy = proofing1;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing1"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:proofing1Copy forKey:@"futureProofing1"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing1"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing2:(id)proofing2
{
  proofing2Copy = proofing2;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing2"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:proofing2Copy forKey:@"futureProofing2"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing2"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing3:(id)proofing3
{
  proofing3Copy = proofing3;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing3"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:proofing3Copy forKey:@"futureProofing3"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing3"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing4:(id)proofing4
{
  proofing4Copy = proofing4;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing4"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:proofing4Copy forKey:@"futureProofing4"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing4"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing5:(id)proofing5
{
  proofing5Copy = proofing5;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing5"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:proofing5Copy forKey:@"futureProofing5"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing5"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing6:(id)proofing6
{
  proofing6Copy = proofing6;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing6"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:proofing6Copy forKey:@"futureProofing6"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing6"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing7:(id)proofing7
{
  proofing7Copy = proofing7;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing7"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:proofing7Copy forKey:@"futureProofing7"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing7"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing8:(id)proofing8
{
  proofing8Copy = proofing8;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing8"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:proofing8Copy forKey:@"futureProofing8"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing8"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing9:(id)proofing9
{
  proofing9Copy = proofing9;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing9"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:proofing9Copy forKey:@"futureProofing9"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing9"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing10:(id)proofing10
{
  proofing10Copy = proofing10;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing10"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:proofing10Copy forKey:@"futureProofing10"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing10"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing11:(id)proofing11
{
  proofing11Copy = proofing11;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing11"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:proofing11Copy forKey:@"futureProofing11"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing11"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (void)setFutureProofing12:(id)proofing12
{
  proofing12Copy = proofing12;
  [(AEAnnotation *)self willChangeValueForKey:@"futureProofing12"];
  v5.receiver = self;
  v5.super_class = AEAnnotation;
  [(AEAnnotation *)&v5 setPrimitiveValue:proofing12Copy forKey:@"futureProofing12"];

  [(AEAnnotation *)self didChangeValueForKey:@"futureProofing12"];
  [(AEAnnotation *)self updateSystemModificationDate];
}

- (BOOL)bumpAnnotationVersionToMinimumVersion:(id)version
{
  versionCopy = version;
  annotationVersion = [(AEAnnotation *)self annotationVersion];
  v6 = annotationVersion;
  if (annotationVersion && (annotationVersion == versionCopy || [annotationVersion compare:versionCopy options:64] != -1))
  {
    v7 = 0;
  }

  else
  {
    [(AEAnnotation *)self setAnnotationVersion:versionCopy];
    v7 = 1;
  }

  return v7;
}

- (BOOL)updateReadingProgressAndBumpHighWaterMarkToProgress:(float)progress
{
  BCFloatAssertUnitIntervalClamp(progress);
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

+ (id)annotatedAttributedStringWithString:(id)string annotationStyle:(int)style range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = *&style;
  stringCopy = string;
  v9 = [[NSMutableAttributedString alloc] initWithString:stringCopy];

  v10 = [[NSNumber alloc] initWithInt:v7];
  [v9 addAttribute:@"kAEAnnotationStyleAttributeName" value:v10 range:{location, length}];

  return v9;
}

+ (id)annotatedAttributedStringForAnnotation:(id)annotation withPossibleLength:(unint64_t)length
{
  annotationCopy = annotation;
  annotationRepresentativeText = [annotationCopy annotationRepresentativeText];
  flattenedAnnotationString = [annotationRepresentativeText flattenedAnnotationString];

  annotationSelectedText = [annotationCopy annotationSelectedText];
  flattenedAnnotationString2 = [annotationSelectedText flattenedAnnotationString];

  if ([flattenedAnnotationString2 length] >= length || +[AEAnnotation isSelectedTextRepeatedInRepresentativeTextForAnnotation:](AEAnnotation, "isSelectedTextRepeatedInRepresentativeTextForAnnotation:", annotationCopy))
  {
    v11 = flattenedAnnotationString2;
    v30 = 0;
    v31 = [v11 length];
    goto LABEL_17;
  }

  v12 = flattenedAnnotationString;
  v13 = [v12 rangeOfString:flattenedAnnotationString2];
  v30 = v13;
  v31 = v14;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = flattenedAnnotationString2;
LABEL_15:
    v11 = v15;
    goto LABEL_16;
  }

  if (&v14[v13] <= length)
  {
    v15 = v12;
    goto LABEL_15;
  }

  if (!v12)
  {
    v17 = 0;
LABEL_26:
    v11 = flattenedAnnotationString2;

    v29 = [v11 length];
    v30 = 0;
    v31 = v29;
    goto LABEL_16;
  }

  v16 = [AEAnnotation clauseForSelectedTextForAnnotation:annotationCopy inSentence:v12 possibleLength:length highlightedRange:&v30];
  if (!v16)
  {
    v16 = [self wordsForSelectedTextForAnnotation:annotationCopy inSentence:v12 possibleLength:length highlightedRange:&v30];
    if (!v16)
    {
      v16 = [self lettersForSelectedTextForAnnotation:annotationCopy inSentence:v12 possibleLength:length highlightedRange:&v30];
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
      annotationStyle = [annotationCopy annotationStyle];
      v24 = [v22 annotatedAttributedStringWithString:v21 annotationStyle:annotationStyle range:{v30, v31}];
      goto LABEL_22;
    }
  }

  else
  {
    annotationRepresentativeText2 = [annotationCopy annotationRepresentativeText];

    v26 = [annotationRepresentativeText2 length];
    v30 = 0;
    v31 = v26;
    v11 = annotationRepresentativeText2;
    if (annotationRepresentativeText2)
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

+ (id)annotatedAttributedStringForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationSelectedText = [annotationCopy annotationSelectedText];
  flattenedAnnotationString = [annotationSelectedText flattenedAnnotationString];

  v6 = [flattenedAnnotationString length];
  if ([flattenedAnnotationString length])
  {
    if (flattenedAnnotationString)
    {
LABEL_3:
      v7 = [flattenedAnnotationString stringByReplacingOccurrencesOfString:@"\r" withString:@"\n"];

      v8 = [objc_opt_class() annotatedAttributedStringWithString:v7 annotationStyle:objc_msgSend(annotationCopy range:{"annotationStyle"), 0, v6}];
      goto LABEL_6;
    }
  }

  else
  {
    annotationRepresentativeText = [annotationCopy annotationRepresentativeText];

    v6 = [annotationRepresentativeText length];
    flattenedAnnotationString = annotationRepresentativeText;
    if (annotationRepresentativeText)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_6:

  return v8;
}

+ (BOOL)isSelectedTextRepeatedInRepresentativeTextForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationRepresentativeText = [annotationCopy annotationRepresentativeText];
  if (annotationRepresentativeText && (v5 = annotationRepresentativeText, [annotationCopy annotationSelectedText], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    annotationRepresentativeText2 = [annotationCopy annotationRepresentativeText];
    annotationSelectedText = [annotationCopy annotationSelectedText];
    annotationRepresentativeText3 = [annotationCopy annotationRepresentativeText];
    v13.length = [annotationRepresentativeText3 length];
    v13.location = 0;
    Results = CFStringCreateArrayWithFindResults(0, annotationRepresentativeText2, annotationSelectedText, v13, 0);

    v11 = [(__CFArray *)Results count]> 1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (id)clauseForSelectedTextForAnnotation:(id)annotation inSentence:(id)sentence possibleLength:(unint64_t)length highlightedRange:(_NSRange *)range
{
  annotationCopy = annotation;
  sentenceCopy = sentence;
  location = range->location;
  length = range->length;
  v13 = +[NSCharacterSet punctuationCharacterSet];
  v14 = 0;
  v15 = length + location;
  v16 = v15;
  while (v14 < v15)
  {
    v17 = [sentenceCopy rangeOfCharacterFromSet:v13 options:0 range:{v14, v16}];
    v14 = &v17[v18];
    v16 = v15 - &v17[v18];
    if (v16 <= length)
    {
      v19 = [sentenceCopy substringWithRange:{v14, objc_msgSend(sentenceCopy, "length") - v14}];
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_6:
  v20 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v21 = [v19 stringByTrimmingCharactersInSet:v20];

  if (v21)
  {
    annotationSelectedText = [annotationCopy annotationSelectedText];
    range->location = [v21 rangeOfString:annotationSelectedText];
    range->length = v23;
  }

  return v21;
}

+ (id)wordsForSelectedTextForAnnotation:(id)annotation inSentence:(id)sentence possibleLength:(unint64_t)length highlightedRange:(_NSRange *)range
{
  annotationCopy = annotation;
  sentenceCopy = sentence;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_CD7AC;
  v30 = sub_CD7BC;
  v31 = 0;
  location = range->location;
  length = range->length;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_CD7C4;
  v20[3] = &unk_2CCB78;
  lengthCopy = length;
  lengthCopy2 = length;
  v22 = &v26;
  v23 = location;
  v13 = sentenceCopy;
  v21 = v13;
  [v13 enumerateSubstringsInRange:0 options:length + location usingBlock:{3, v20}];
  v14 = v27[5];
  v15 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v16 = [v14 stringByTrimmingCharactersInSet:v15];

  if (v16)
  {
    annotationSelectedText = [annotationCopy annotationSelectedText];
    range->location = [v16 rangeOfString:annotationSelectedText];
    range->length = v18;
  }

  _Block_object_dispose(&v26, 8);

  return v16;
}

+ (id)lettersForSelectedTextForAnnotation:(id)annotation inSentence:(id)sentence possibleLength:(unint64_t)length highlightedRange:(_NSRange *)range
{
  annotationCopy = annotation;
  sentenceCopy = sentence;
  v11 = range->length + range->location;
  v12 = v11 - length;
  v13 = [sentenceCopy length];
  v14 = v11 >= length;
  v15 = v11 - length;
  if (v15 != 0 && v14 && (v16 = v13, v13 <= [sentenceCopy length]))
  {
    v17 = [sentenceCopy substringWithRange:{v15, &v16[-v12]}];
  }

  else
  {
    v17 = 0;
  }

  v18 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v19 = [v17 stringByTrimmingCharactersInSet:v18];

  if (v19)
  {
    annotationSelectedText = [annotationCopy annotationSelectedText];
    range->location = [v19 rangeOfString:annotationSelectedText];
    range->length = v21;
  }

  return v19;
}

+ (id)contextAwareSelectedTextFromAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationRepresentativeText = [annotationCopy annotationRepresentativeText];
  if (objc_opt_respondsToSelector())
  {
    annotationSelectedTextRange = [annotationCopy annotationSelectedTextRange];
    v7 = v6;
  }

  else
  {
    v7 = 0;
    annotationSelectedTextRange = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (annotationSelectedTextRange == 0x7FFFFFFFFFFFFFFFLL || ![annotationRepresentativeText length])
  {
    annotationSelectedText = [annotationCopy annotationSelectedText];
    if ([annotationRepresentativeText length] && (objc_msgSend(annotationSelectedText, "isEqualToString:", annotationRepresentativeText) & 1) == 0 && objc_msgSend(annotationRepresentativeText, "ae_occurrenceCountOfString:", annotationSelectedText) == &dword_0 + 1)
    {
      annotationSelectedTextRange = [annotationRepresentativeText rangeOfString:annotationSelectedText];
      v7 = v10;
      v8 = 0;
    }

    else
    {
      v8 = annotationSelectedText;
    }
  }

  else
  {
    v8 = 0;
  }

  if (annotationSelectedTextRange != 0x7FFFFFFFFFFFFFFFLL && !v8)
  {
    v11 = IMCommonCoreBundle();
    v12 = [v11 localizedStringForKey:@"\\U2026" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    [annotationRepresentativeText substringWithRange:{annotationSelectedTextRange, v7}];
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
    v21 = annotationSelectedTextRange;
    v22 = v7;
    v18 = annotationRepresentativeText;
    v15 = v12;
    v19 = v15;
    v20 = &v23;
    [v13 enumerateSubstringsInRange:0 options:v14 usingBlock:{4, v17}];
    v8 = v24[5];

    _Block_object_dispose(&v23, 8);
  }

  return v8;
}

- (BOOL)validateForInsert:(id *)insert
{
  v7.receiver = self;
  v7.super_class = AEAnnotation;
  v5 = [(AEAnnotation *)&v7 validateForInsert:?];
  return v5 & [(AEAnnotation *)self validateConsistency:insert];
}

- (BOOL)validateForUpdate:(id *)update
{
  v7.receiver = self;
  v7.super_class = AEAnnotation;
  v5 = [(AEAnnotation *)&v7 validateForUpdate:?];
  return v5 & [(AEAnnotation *)self validateConsistency:update];
}

- (BOOL)validateConsistency:(id *)consistency
{
  annotationLocation = [(AEAnnotation *)self annotationLocation];
  if ([annotationLocation length])
  {
    goto LABEL_4;
  }

  plUserData = [(AEAnnotation *)self plUserData];
  if ([plUserData length])
  {

LABEL_4:
    return 1;
  }

  isAnnotationDeleted = [(AEAnnotation *)self isAnnotationDeleted];

  if (isAnnotationDeleted)
  {
    return 1;
  }

  v9 = BCIMLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1E9688(self, v9);
  }

  if (!consistency)
  {
    return 0;
  }

  v10 = [NSError errorWithDomain:@"AEAnnotationErrorDomain" code:1000 userInfo:0];
  v11 = v10;
  result = 0;
  *consistency = v10;
  return result;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v27 = NSStringFromClass(v3);
  annotationAssetID = [(AEAnnotation *)self annotationAssetID];
  annotationCreationDate = [(AEAnnotation *)self annotationCreationDate];
  annotationCreatorIdentifier = [(AEAnnotation *)self annotationCreatorIdentifier];
  isAnnotationDeleted = [(AEAnnotation *)self isAnnotationDeleted];
  annotationIsUnderline = [(AEAnnotation *)self annotationIsUnderline];
  annotationLocation = [(AEAnnotation *)self annotationLocation];
  annotationModificationDate = [(AEAnnotation *)self annotationModificationDate];
  annotationNote = [(AEAnnotation *)self annotationNote];
  annotationRepresentativeText = [(AEAnnotation *)self annotationRepresentativeText];
  annotationSelectedText = [(AEAnnotation *)self annotationSelectedText];
  annotationStyle = [(AEAnnotation *)self annotationStyle];
  annotationType = [(AEAnnotation *)self annotationType];
  annotationUuid = [(AEAnnotation *)self annotationUuid];
  physicalPageNumber = [(AEAnnotation *)self physicalPageNumber];
  annotationVersion = [(AEAnnotation *)self annotationVersion];
  assetVersion = [(AEAnnotation *)self assetVersion];
  attachments = [(AEAnnotation *)self attachments];
  chapterTitle = [(AEAnnotation *)self chapterTitle];
  userModificationDate = [(AEAnnotation *)self userModificationDate];
  annotationModificationDate2 = [(AEAnnotation *)self annotationModificationDate];
  v16 = [(AEAnnotation *)self primitiveValueForKey:@"futureProofing7"];
  [(AEAnnotation *)self readingProgressHighWaterMark];
  v5 = v4;
  spineIndexUpdated = [(AEAnnotation *)self spineIndexUpdated];
  [(AEAnnotation *)self readingProgress];
  v7 = v6;
  locationModificationDate = [(AEAnnotation *)self locationModificationDate];
  plAbsolutePhysicalLocation = [(AEAnnotation *)self plAbsolutePhysicalLocation];
  plLocationRangeEnd = [(AEAnnotation *)self plLocationRangeEnd];
  plLocationRangeStart = [(AEAnnotation *)self plLocationRangeStart];
  plStorageUUID = [(AEAnnotation *)self plStorageUUID];
  plUserData = [(AEAnnotation *)self plUserData];
  v28 = [NSString stringWithFormat:@"<%@:%p\n    assetID = %@\n    creationDate = %@;\n    creatorIdentifier = %@;\n    deleted = %d;\n    isUnderline = %d;\n    cfiLocation = %@;\n    modificationDate = %@;\n    note = %@;\n    representativeText = %@;\n    selectedText = %@;\n    style = %d;\n    type = %d;\n    uuid = %@;\n    physicalPageNumber = %@;\n    annotationVersion = %@;\n    assetVersion = %@;\n    attachments = %@;\n    chapterTitle = %@;\n    userModificationDate = %@;\n    annotationModificationDate = %@;\n    selectedTextRange = %@;\n    readingProgressHighWaterMark = %f;\n    spineIndexUpdated = %d;\n    readingProgress = %f;\n    locationModificationDate = %@;\n    plAbsolutePhysicalLocation = %@;\n    plLocationRangeEnd = %@;\n    plLocationRangeStart = %@;\n    plStorageUUID = %@;\n    plUserData = %@;\n>", v27, self, annotationAssetID, annotationCreationDate, annotationCreatorIdentifier, isAnnotationDeleted, annotationIsUnderline, annotationLocation, annotationModificationDate, annotationNote, annotationRepresentativeText, annotationSelectedText, annotationStyle, annotationType, annotationUuid, physicalPageNumber, annotationVersion, assetVersion, attachments, chapterTitle, userModificationDate, annotationModificationDate2, v16, *&v5, spineIndexUpdated, *&v7, locationModificationDate, plAbsolutePhysicalLocation, plLocationRangeEnd, plLocationRangeStart, plStorageUUID, plUserData];;

  return v28;
}

- (NSNumber)annotationStyleNumber
{
  annotationStyle = [(AEAnnotation *)self annotationStyle];

  return [NSNumber numberWithInt:annotationStyle];
}

- (NSNumber)annotationTypeNumber
{
  annotationType = [(AEAnnotation *)self annotationType];

  return [NSNumber numberWithInt:annotationType];
}

+ (BOOL)mergeAnnotation:(id)annotation withServerAnnotation:(id)serverAnnotation moc:(id)moc
{
  annotationCopy = annotation;
  serverAnnotationCopy = serverAnnotation;
  mocCopy = moc;
  v10 = [objc_opt_class() lastModificationFromDictionaryRepresentation:serverAnnotationCopy];
  unsignedLongLongValue = [v10 unsignedLongLongValue];

  annotationModificationDate = [annotationCopy annotationModificationDate];
  [annotationModificationDate timeIntervalSince1970];
  v14 = v13;

  v15 = [objc_opt_class() annotationAssetIDFromDictionaryRepresentation:serverAnnotationCopy];
  if (unsignedLongLongValue < v14)
  {
    v16 = BKMobileCloudSyncAnnotationsLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v29 = 138413058;
      v30 = v15;
      v31 = 1024;
      *v32 = v14;
      *&v32[4] = 1024;
      *&v32[6] = unsignedLongLongValue;
      LOWORD(v33) = 1024;
      *(&v33 + 2) = v14 - unsignedLongLongValue;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Client: %d; Server: %d; (%d) client > server, not merging", &v29, 0x1Eu);
    }

    goto LABEL_23;
  }

  v17 = BKMobileCloudSyncAnnotationsLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (unsignedLongLongValue == v14)
  {
    if (v18)
    {
      v29 = 138413058;
      v30 = v15;
      v31 = 1024;
      *v32 = unsignedLongLongValue;
      *&v32[4] = 1024;
      *&v32[6] = unsignedLongLongValue;
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
    *&v32[6] = unsignedLongLongValue;
    LOWORD(v33) = 1024;
    *(&v33 + 2) = v14 - unsignedLongLongValue;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Client: %d; Server: %d; (%d) ... MERGING ANNOTATION", &v29, 0x1Eu);
  }

  if (!annotationCopy)
  {
    v19 = [objc_opt_class() annotationCreatorIdentifierFromDictionaryRepresentation:serverAnnotationCopy];
    annotationUuid2 = [objc_opt_class() annotationAssetIDFromDictionaryRepresentation:serverAnnotationCopy];
    annotationCopy = [AEAnnotation insertAnnotationWithAssetID:annotationUuid2 creatorIdentifier:v19 annotationUuid:0 intoManagedObjectContext:mocCopy];
    v21 = BKMobileCloudSyncAnnotationsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      annotationUuid = [annotationCopy annotationUuid];
      v29 = 138412546;
      v30 = annotationUuid2;
      v31 = 2112;
      *v32 = annotationUuid;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Creating new Annotation: %@", &v29, 0x16u);
    }

    goto LABEL_17;
  }

  v19 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    annotationUuid2 = [annotationCopy annotationUuid];
    v29 = 138412546;
    v30 = v15;
    v31 = 2112;
    *v32 = annotationUuid2;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Updating existing Annotation: %@", &v29, 0x16u);
LABEL_17:
  }

  v23 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    redactedAnnotationLocation = [annotationCopy redactedAnnotationLocation];
    plUserData = [annotationCopy plUserData];
    v26 = [plUserData description];
    v29 = 138412802;
    v30 = v15;
    v31 = 2114;
    *v32 = redactedAnnotationLocation;
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
    *v32 = serverAnnotationCopy;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ dictionary=%{public}@", &v29, 0x16u);
  }

  [annotationCopy deserializeFromDictionary:serverAnnotationCopy trustedSource:0];
LABEL_23:

  return unsignedLongLongValue < v14;
}

+ (BOOL)mergeServerAnnotations:(id)annotations forAssetID:(id)d intoMoc:(id)moc
{
  annotationsCopy = annotations;
  dCopy = d;
  mocCopy = moc;
  v9 = BKMobileCloudSyncAnnotationsLog();
  v33 = dCopy;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [annotationsCopy count]);
    *buf = 138412546;
    v46 = v33;
    v47 = 2112;
    v48 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Merging {%@} serverAnnotations", buf, 0x16u);

    dCopy = v33;
  }

  v11 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(annotationsCopy, "count")}];
  [AEAnnotation annotationsForAssetID:dCopy includingDeleted:1 inManagedObjectContext:mocCopy];
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
        annotationUuid = [v16 annotationUuid];
        [v11 setObject:v16 forKey:annotationUuid];
      }

      v13 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v13);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = annotationsCopy;
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
            v27 = [v26 globalAnnotationForAssetID:dCopy inManagedObjectContext:mocCopy];
            v28 = BKMobileCloudSyncAnnotationsLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = [objc_opt_class() annotationUuidFromDictionaryRepresentation:v24];
              annotationUuid2 = [v27 annotationUuid];
              *buf = v32;
              v46 = v33;
              v47 = 2112;
              v48 = v29;
              v49 = 2112;
              v50 = annotationUuid2;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "MZBookKeeper annotation merge assetID=%@ Found Global Annotation -- Server: %@\nLocal: %@", buf, 0x20u);

              dCopy = v33;
            }
          }

          else
          {
            v28 = [v26 annotationUuidFromDictionaryRepresentation:v24];
            v27 = [v11 objectForKey:v28];
          }

          v21 |= [AEAnnotation mergeAnnotation:v27 withServerAnnotation:v24 moc:mocCopy];
        }

        else
        {
          v27 = BKMobileCloudSyncAnnotationsLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v46 = dCopy;
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
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
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

+ (id)dictionaryRepresentationsForAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [annotationsCopy count]);
  if ([annotationsCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = annotationsCopy;
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
            dictionaryRepresentation = [v10 dictionaryRepresentation];
            [v4 addObject:dictionaryRepresentation];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

+ (id)_dictionaryRepresentationForAnnotationsMatchingPredicate:(id)predicate map:(id)map inManagedObjectContext:(id)context
{
  contextCopy = context;
  mapCopy = map;
  predicateCopy = predicate;
  dateKeysForDictionaryRepresentation = [self dateKeysForDictionaryRepresentation];
  requiredKeysForDictionaryRepresentation = [self requiredKeysForDictionaryRepresentation];
  optionalKeysForDictionaryRepresentation = [self optionalKeysForDictionaryRepresentation];
  v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dateKeysForDictionaryRepresentation, "count") + objc_msgSend(requiredKeysForDictionaryRepresentation, "count") + objc_msgSend(optionalKeysForDictionaryRepresentation, "count")}];
  [v12 addObjectsFromArray:dateKeysForDictionaryRepresentation];
  [v12 addObjectsFromArray:requiredKeysForDictionaryRepresentation];
  v27 = optionalKeysForDictionaryRepresentation;
  [v12 addObjectsFromArray:optionalKeysForDictionaryRepresentation];
  v13 = [AEAnnotation predicateForAllAnnotationsIncludingDeleted:0];
  v14 = [NSArray arrayWithObjects:v13, predicateCopy, 0];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];

  v16 = [self dictionaryResultsForAnnotationsWithPredicate:v15 properties:v12 propertyNamesMap:mapCopy inManagedObjectContext:contextCopy];

  v17 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dateKeysForDictionaryRepresentation, "count") + objc_msgSend(requiredKeysForDictionaryRepresentation, "count")}];
  [v17 addObjectsFromArray:dateKeysForDictionaryRepresentation];
  [v17 addObjectsFromArray:requiredKeysForDictionaryRepresentation];
  v18 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", -+[IMUserDataCull maxDeletedAge]);
  v19 = [NSPredicate predicateWithFormat:@"%K == YES && %K > %@", @"annotationDeleted", @"annotationModificationDate", v18];

  v20 = [NSArray arrayWithObjects:v19, predicateCopy, 0];

  v21 = [NSCompoundPredicate andPredicateWithSubpredicates:v20];

  v22 = [self dictionaryResultsForAnnotationsWithPredicate:v21 properties:v17 propertyNamesMap:mapCopy inManagedObjectContext:contextCopy];

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

+ (id)compatibleDictionaryRepresentationForAnnotationsMatchingPredicate:(id)predicate inManagedObjectContext:(id)context
{
  contextCopy = context;
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
  v34 = [self _dictionaryRepresentationForAnnotationsMatchingPredicate:v32 map:v4 inManagedObjectContext:contextCopy];
  v35 = [self _dictionaryRepresentationForAnnotationsMatchingPredicate:v33 map:0 inManagedObjectContext:contextCopy];

  v36 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v34 count] + objc_msgSend(v35, "count"));
  [v36 addObjectsFromArray:v34];
  [v36 addObjectsFromArray:v35];

  return v36;
}

+ (id)aeAnnotationDictionaryRepresentationsForAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [annotationsCopy count]);
  if ([annotationsCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = annotationsCopy;
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
            aeAnnotationDictionaryRepresentation = [v10 aeAnnotationDictionaryRepresentation];
            [v4 addObject:aeAnnotationDictionaryRepresentation];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

+ (id)dictionaryResultsForAnnotationsWithPredicate:(id)predicate properties:(id)properties propertyNamesMap:(id)map inManagedObjectContext:(id)context
{
  predicateCopy = predicate;
  propertiesCopy = properties;
  mapCopy = map;
  contextCopy = context;
  v14 = contextCopy;
  if (contextCopy)
  {
    v58 = contextCopy;
    v59 = predicateCopy;
    v57 = propertiesCopy;
    v15 = [propertiesCopy mutableCopy];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = [self dateKeysForDictionaryRepresentation];
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
            v29 = [mapCopy objectForKey:v28];
            objc_opt_class();
            v30 = mapCopy;
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v32 = [v30 objectForKey:v28];

              v28 = v32;
            }

            mapCopy = v30;
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

    predicateCopy = v59;
    if ([mapCopy count])
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
      v61 = mapCopy;
      v35 = mapCopy;
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

      predicateCopy = v59;
      mapCopy = v61;
    }

    v49 = objc_autoreleasePoolPush();
    v50 = objc_alloc_init(NSFetchRequest);
    v51 = v15;
    v14 = v58;
    v52 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:v58];
    [v50 setEntity:v52];
    [v50 setResultType:2];
    [v50 setPropertiesToFetch:v51];
    [v50 setPredicate:predicateCopy];
    v64 = 0;
    v53 = [v58 executeFetchRequest:v50 error:&v64];

    objc_autoreleasePoolPop(v49);
    propertiesCopy = v57;
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

  annotationModificationDate = [(AEAnnotation *)self annotationModificationDate];
  [annotationModificationDate timeIntervalSince1970];
  v5 = v4;

  if ([IMUserDataCull isTimestampNewerThanMaxDeletedAge:v5])
  {
    return 1;
  }

  v7 = BCIMLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    annotationAssetID = [(AEAnnotation *)self annotationAssetID];
    annotationUuid = [(AEAnnotation *)self annotationUuid];
    v10 = +[NSDate date];
    [v10 timeIntervalSince1970];
    v12 = 138412802;
    v13 = annotationAssetID;
    v14 = 2112;
    v15 = annotationUuid;
    v16 = 2048;
    v17 = ((v11 - v5) / 86400.0);
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "MZBookKeeper isValidForSerialization assetID=%@ [%@] [Deleted %llu days ago]", &v12, 0x20u);
  }

  return 0;
}

- (void)deserializeFromDictionary:(id)dictionary trustedSource:(BOOL)source
{
  dictionaryCopy = dictionary;
  sourceCopy = source;
  v7 = [objc_opt_class() annotationCreatorIdentifierFromDictionaryRepresentation:dictionaryCopy];
  v8 = [dictionaryCopy objectForKey:@"bookDatabaseKey"];
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
  [v13 setArgument:&dictionaryCopy atIndex:2];
  [v13 setArgument:&sourceCopy atIndex:3];
  [v13 invokeWithTarget:self];
  annotationCreatorIdentifier = [(AEAnnotation *)self annotationCreatorIdentifier];
  v15 = [annotationCreatorIdentifier isEqualToString:v9];

  if ((v15 & 1) == 0)
  {
    [(AEAnnotation *)self setAnnotationCreatorIdentifier:v9];
  }
}

- (void)aeAnnotationDeserializeFromDictionary:(id)dictionary trustedSource:(BOOL)source
{
  dictionaryCopy = dictionary;
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
        v11 = [dictionaryCopy valueForKey:v10];
        if (!v11 || (+[NSNull null], v12 = objc_claimAutoreleasedReturnValue(), v12, v11 == v12))
        {
          selfCopy2 = self;
          v14 = 0;
        }

        else
        {
          selfCopy2 = self;
          v14 = v11;
        }

        [(AEAnnotation *)selfCopy2 setValue:v14 forKey:v10];
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
          v21 = [dictionaryCopy valueForKey:v20];
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
        v29 = [dictionaryCopy valueForKey:v28];
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
    annotationModificationDate = [(AEAnnotation *)self annotationModificationDate];
    [(AEAnnotation *)self setUserModificationDate:annotationModificationDate];
    goto LABEL_44;
  }

  v32 = [dictionaryCopy valueForKey:@"futureProofing6"];

  if (v32)
  {
    annotationModificationDate = [dictionaryCopy valueForKey:@"futureProofing6"];
    if ([annotationModificationDate length])
    {
      [annotationModificationDate doubleValue];
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

  v35 = [dictionaryCopy valueForKey:@"annotationModificationDate"];

  if (v35)
  {
    annotationModificationDate = [dictionaryCopy valueForKey:@"annotationModificationDate"];
    v34 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [annotationModificationDate unsignedLongLongValue]);
    goto LABEL_41;
  }

LABEL_45:
  annotationModificationDate2 = [(AEAnnotation *)self annotationModificationDate];
  [(AEAnnotation *)self setLocationModificationDate:annotationModificationDate2];
}

+ (BOOL)isValidForDeserialization:(id)deserialization
{
  deserializationCopy = deserialization;
  v5 = [self deletedFlagFromDictionaryRepresentation:deserializationCopy];
  if (![v5 BOOLValue])
  {
    objc_opt_class();
    v14 = [deserializationCopy objectForKeyedSubscript:@"locationBPlist"];
    v15 = BUDynamicCast();
    if (![v15 length])
    {
      objc_opt_class();
      v16 = [deserializationCopy objectForKeyedSubscript:@"plUserData"];
      v17 = BUDynamicCast();
      if (![v17 length])
      {
        objc_opt_class();
        v18 = [deserializationCopy objectForKeyedSubscript:@"annotationLocation"];
        v19 = BUDynamicCast();
        if (![v19 length])
        {
          v21 = [self deletedFlagFromDictionaryRepresentation:deserializationCopy];
          bOOLValue = [v21 BOOLValue];

          if ((bOOLValue & 1) == 0)
          {
            v8 = BCIMLog();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              sub_1ED128(self, deserializationCopy, v8);
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

  v6 = [self lastModificationFromDictionaryRepresentation:deserializationCopy];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  if ([IMUserDataCull isTimestampNewerThanMaxDeletedAge:unsignedLongLongValue])
  {
    goto LABEL_12;
  }

  v8 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [objc_opt_class() annotationAssetIDFromDictionaryRepresentation:deserializationCopy];
    v10 = [objc_opt_class() annotationUuidFromDictionaryRepresentation:deserializationCopy];
    v11 = +[NSDate date];
    [v11 timeIntervalSince1970];
    *buf = 138412802;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 2048;
    v28 = ((v12 - unsignedLongLongValue) / 86400.0);
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
  annotationAssetID = [(AEAnnotation *)self annotationAssetID];

  if (annotationAssetID)
  {
    annotationAssetID2 = [(AEAnnotation *)self annotationAssetID];
    [v3 setObject:annotationAssetID2 forKey:@"bookDatabaseKey"];
  }

  annotationCreationDate = [(AEAnnotation *)self annotationCreationDate];

  if (annotationCreationDate)
  {
    annotationCreationDate2 = [(AEAnnotation *)self annotationCreationDate];
    [annotationCreationDate2 timeIntervalSince1970];
    v9 = [NSNumber numberWithUnsignedLongLong:v8];
    [v3 setObject:v9 forKey:@"date"];
  }

  plLocationRangeStart = [(AEAnnotation *)self plLocationRangeStart];

  if (!plLocationRangeStart)
  {
    v11 = [NSNumber numberWithInt:0];
    [(AEAnnotation *)self setPlLocationRangeStart:v11];
  }

  plLocationRangeStart2 = [(AEAnnotation *)self plLocationRangeStart];

  if (plLocationRangeStart2)
  {
    plLocationRangeStart3 = [(AEAnnotation *)self plLocationRangeStart];
    [v3 setObject:plLocationRangeStart3 forKey:@"ordinal"];
  }

  v14 = [objc_opt_class() bookmarkTypeFromAnnotationType:{-[AEAnnotation annotationType](self, "annotationType")}];
  if (v14)
  {
    [v3 setObject:v14 forKey:@"type"];
  }

  annotationModificationDate = [(AEAnnotation *)self annotationModificationDate];

  if (!annotationModificationDate)
  {
    annotationCreationDate3 = [(AEAnnotation *)self annotationCreationDate];
    [(AEAnnotation *)self setAnnotationModificationDate:annotationCreationDate3];
  }

  annotationModificationDate2 = [(AEAnnotation *)self annotationModificationDate];

  if (annotationModificationDate2)
  {
    annotationModificationDate3 = [(AEAnnotation *)self annotationModificationDate];
    [annotationModificationDate3 timeIntervalSince1970];
    v20 = [NSNumber numberWithUnsignedLongLong:v19];
    [v3 setObject:v20 forKey:@"lastModification"];
  }

  userModificationDate = [(AEAnnotation *)self userModificationDate];

  if (userModificationDate)
  {
    userModificationDate2 = [(AEAnnotation *)self userModificationDate];
    [userModificationDate2 timeIntervalSince1970];
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

    plUserData = [(AEAnnotation *)self plUserData];

    if (plUserData)
    {
      plUserData2 = [(AEAnnotation *)self plUserData];
      [v3 setObject:plUserData2 forKey:@"locationBPlist"];
    }

    annotationSelectedText = [(AEAnnotation *)self annotationSelectedText];
    v30 = [objc_opt_class() optimizedSelectedTextForSerialization:annotationSelectedText];

    annotationRepresentativeText = [(AEAnnotation *)self annotationRepresentativeText];
    v32 = [objc_opt_class() optimizedRepresentativeTextForSerialization:annotationRepresentativeText selectedText:v30];

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
  annotationUuid = [(AEAnnotation *)self annotationUuid];
  [v3 setObject:annotationUuid forKey:@"serverSyncUniqueId"];

  annotationNote = [(AEAnnotation *)self annotationNote];

  if (annotationNote)
  {
    annotationNote2 = [(AEAnnotation *)self annotationNote];
    [v3 setObject:annotationNote2 forKey:@"annotation"];
  }

  return v3;
}

- (id)doesSerializeAs_iBooks
{
  annotationCreatorIdentifier = [(AEAnnotation *)self annotationCreatorIdentifier];
  v4 = [objc_opt_class() isBKBookmarkCreatorIdentifier:annotationCreatorIdentifier];
  annotationVersion = [(AEAnnotation *)self annotationVersion];

  v6 = (annotationVersion == 0) & v4;
  if (annotationVersion && (v4 & 1) != 0)
  {
    annotationVersion2 = [(AEAnnotation *)self annotationVersion];
    v6 = [annotationVersion2 compare:@"3" options:64] == -1;
  }

  v8 = [NSNumber numberWithBool:v6];

  return v8;
}

- (void)iBooks_deserializeFromDictionary:(id)dictionary trustedSource:(BOOL)source
{
  sourceCopy = source;
  dictionaryCopy = dictionary;
  v6 = [(AEAnnotation *)self valueForKey:@"futureProofing6"];

  v7 = [dictionaryCopy objectForKey:@"bookDatabaseKey"];
  [(AEAnnotation *)self setAnnotationAssetID:v7];

  v8 = objc_opt_class();
  v9 = [dictionaryCopy objectForKey:@"highlightColor"];
  -[AEAnnotation setAnnotationStyle:](self, "setAnnotationStyle:", [v8 annotationStyleFromBookmarkColor:v9]);

  v10 = [dictionaryCopy valueForKey:@"annotationIsUnderline"];
  -[AEAnnotation setAnnotationIsUnderline:](self, "setAnnotationIsUnderline:", [v10 BOOLValue]);

  v11 = [dictionaryCopy objectForKey:@"date"];
  v12 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v11 unsignedLongLongValue]);
  [(AEAnnotation *)self setAnnotationCreationDate:v12];

  v13 = [(AEAnnotation *)self bkBookmarkDeserializeLocationDataFromDictionary:dictionaryCopy trustedSource:sourceCopy];
  [(AEAnnotation *)self setPlUserData:v13];

  v14 = [dictionaryCopy objectForKey:@"ordinal"];
  [(AEAnnotation *)self setPlLocationRangeStart:v14];

  v15 = [dictionaryCopy objectForKey:@"text"];
  [(AEAnnotation *)self setAnnotationSelectedText:v15];

  v16 = [dictionaryCopy objectForKey:@"textualContext"];
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
  v19 = [dictionaryCopy objectForKey:@"type"];
  -[AEAnnotation setAnnotationType:](self, "setAnnotationType:", [v18 annotationTypeFromBookmarkType:v19]);

  if (![(AEAnnotation *)self annotationStyle]&& ![(AEAnnotation *)self annotationIsUnderline]&& [(AEAnnotation *)self annotationType]== 2)
  {
    [(AEAnnotation *)self setAnnotationIsUnderline:1];
  }

  if (![(AEAnnotation *)self annotationType])
  {
    annotationSelectedText = [(AEAnnotation *)self annotationSelectedText];
    if (annotationSelectedText)
    {

      v21 = 2;
    }

    else
    {
      annotationRepresentativeText = [(AEAnnotation *)self annotationRepresentativeText];

      if (annotationRepresentativeText)
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

  v23 = [dictionaryCopy objectForKey:@"deletedFlag"];
  bOOLValue = [v23 BOOLValue];

  [(AEAnnotation *)self setAnnotationDeleted:bOOLValue];
  v25 = [dictionaryCopy objectForKey:@"annotation"];
  [(AEAnnotation *)self setAnnotationNote:v25];

  v26 = [dictionaryCopy objectForKey:@"serverSyncUniqueId"];
  [(AEAnnotation *)self setAnnotationUuid:v26];

  [(AEAnnotation *)self validateAnnotationUuid];
  v27 = [dictionaryCopy objectForKey:@"lastModification"];
  v28 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v27 unsignedLongLongValue]);
  [(AEAnnotation *)self setAnnotationModificationDate:v28];

  if (!v6)
  {
    annotationModificationDate = [(AEAnnotation *)self annotationModificationDate];
    [(AEAnnotation *)self setUserModificationDate:annotationModificationDate];
    goto LABEL_21;
  }

  v29 = [dictionaryCopy valueForKey:@"lastUserModification"];

  if (v29)
  {
    annotationModificationDate = [dictionaryCopy objectForKey:@"lastUserModification"];
    v31 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [annotationModificationDate unsignedLongLongValue]);
LABEL_18:
    [(AEAnnotation *)self setUserModificationDate:v31];
LABEL_19:

LABEL_21:
    goto LABEL_22;
  }

  v33 = [dictionaryCopy valueForKey:@"lastModification"];

  if (v33)
  {
    annotationModificationDate = [dictionaryCopy valueForKey:@"lastModification"];
    v31 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [annotationModificationDate unsignedLongLongValue]);
    if (!v31)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_22:
  annotationModificationDate2 = [(AEAnnotation *)self annotationModificationDate];
  [(AEAnnotation *)self setLocationModificationDate:annotationModificationDate2];
}

- (id)bkBookmarkDeserializeLocationDataFromDictionary:(id)dictionary trustedSource:(BOOL)source
{
  sourceCopy = source;
  dictionaryCopy = dictionary;
  if (objc_opt_respondsToSelector())
  {
    [(AEAnnotation *)self preferredDeserializedLocationDataFromDictionary:dictionaryCopy trustedSource:sourceCopy];
  }

  else
  {
    [dictionaryCopy objectForKey:@"locationBPlist"];
  }
  v7 = ;

  return v7;
}

+ (int)annotationStyleFromBookmarkColor:(id)color
{
  result = [color intValue];
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

+ (id)bookmarkColorFromAnnotationStyle:(int)style
{
  if ((style - 1) >= 5)
  {
    *&style = 0;
  }

  else
  {
    styleCopy = style;
  }

  return [NSNumber numberWithInt:*&style];
}

+ (int)annotationTypeFromBookmarkType:(id)type
{
  v3 = [type intValue] - 1;
  if (v3 > 2)
  {
    return 0;
  }

  else
  {
    return dword_2A4620[v3];
  }
}

+ (id)bookmarkTypeFromAnnotationType:(int)type
{
  if ((type - 1) > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_2A462C[type - 1];
  }

  return [NSNumber numberWithInt:v3];
}

+ (id)annotationUuidFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKey:@"serverSyncUniqueId"];
  if (![v4 length])
  {
    v5 = [representationCopy objectForKey:@"annotationUuid"];

    v4 = v5;
  }

  return v4;
}

+ (id)annotationAssetIDFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKey:@"bookDatabaseKey"];
  if (![v4 length])
  {
    v5 = [representationCopy objectForKey:@"annotationAssetID"];

    v4 = v5;
  }

  return v4;
}

+ (id)lastModificationFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKey:@"lastModification"];
  if (!v4)
  {
    v4 = [representationCopy objectForKey:@"annotationModificationDate"];
  }

  return v4;
}

+ (id)deletedFlagFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKey:@"deletedFlag"];
  if (!v4)
  {
    v4 = [representationCopy objectForKey:@"annotationDeleted"];
  }

  return v4;
}

+ (id)annotationCreatorIdentifierFromDictionaryRepresentation:(id)representation
{
  v3 = [representation objectForKey:@"annotationCreatorIdentifier"];
  if (![v3 length])
  {
    v4 = @"com~apple~iBooks";

    v3 = v4;
  }

  return v3;
}

+ (int)annotationTypeFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKey:@"type"];
  if (v5)
  {
    v6 = v5;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v8 = 0;
      goto LABEL_7;
    }

    intValue = [self annotationTypeFromBookmarkType:v6];
  }

  else
  {
    v6 = [representationCopy objectForKey:@"annotationType"];
    intValue = [v6 intValue];
  }

  v8 = intValue;
LABEL_7:

  return v8;
}

- (id)validateAnnotationUuid
{
  annotationUuid = [(AEAnnotation *)self annotationUuid];
  if (![annotationUuid length])
  {
    if ([(AEAnnotation *)self annotationType]== 3)
    {
      v4 = @"Reading Location";
    }

    else
    {
      plUserData = [(AEAnnotation *)self plUserData];
      bytes = [plUserData bytes];
      plUserData2 = [(AEAnnotation *)self plUserData];
      v8 = crc32(0, bytes, [plUserData2 length]);

      annotationCreationDate = [(AEAnnotation *)self annotationCreationDate];
      [annotationCreationDate timeIntervalSince1970];
      v4 = [NSString stringWithFormat:@"%d-crc32(%08x)", v10, v8];

      annotationUuid = annotationCreationDate;
    }

    [(AEAnnotation *)self setAnnotationUuid:v4];
    annotationUuid = v4;
  }

  return annotationUuid;
}

+ (BOOL)isBKBookmarkCreatorIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy && ([identifierCopy isEqualToString:@"com~apple~iBooks"] & 1) == 0)
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