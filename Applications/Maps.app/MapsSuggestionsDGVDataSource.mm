@interface MapsSuggestionsDGVDataSource
- (BOOL)_buildAnnotationsWithDictFromDeserializedJson:(id)json;
- (BOOL)_buildLinksWithDictFromDeserializedJson:(id)json;
- (MapsSuggestionsDGVDataSource)initWithJSONString:(id)string;
- (id)_annotationWithLatitude:(double)latitude longitude:(double)longitude;
- (id)_dictFromJSONString:(id)string;
- (id)_findAnnotationEquivalentToUnserializedJSON:(id)n;
@end

@implementation MapsSuggestionsDGVDataSource

- (id)_annotationWithLatitude:(double)latitude longitude:(double)longitude
{
  annotations = self->_annotations;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100725B24;
  v9[3] = &unk_101627968;
  *&v9[4] = latitude;
  *&v9[5] = longitude;
  v5 = [NSPredicate predicateWithBlock:v9];
  v6 = [(NSMutableArray *)annotations filteredArrayUsingPredicate:v5];

  if ([v6 count] == 1)
  {
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_findAnnotationEquivalentToUnserializedJSON:(id)n
{
  v4 = [n objectForKey:@"likelyLocation"];
  v5 = v4;
  if (v4)
  {
    if ([v4 count] == 2)
    {
      v6 = [v5 objectAtIndex:0];
      [v6 doubleValue];
      v8 = v7;

      v9 = [v5 objectAtIndex:1];
      [v9 doubleValue];
      v11 = v10;

      v12 = [(MapsSuggestionsDGVDataSource *)self _annotationWithLatitude:v8 longitude:v11];
      goto LABEL_10;
    }

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVDataSource.m";
      v18 = 1024;
      v19 = 121;
      v20 = 2082;
      v21 = "[MapsSuggestionsDGVDataSource _findAnnotationEquivalentToUnserializedJSON:]";
      v22 = 2082;
      v23 = "[likelyLocationCoords count] != 2u";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Coordinate array must have exactly two items";
      goto LABEL_8;
    }
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVDataSource.m";
      v18 = 1024;
      v19 = 120;
      v20 = 2082;
      v21 = "[MapsSuggestionsDGVDataSource _findAnnotationEquivalentToUnserializedJSON:]";
      v22 = 2082;
      v23 = "nil == (likelyLocationCoords)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Destination JSON must have likelyLocation coordinates";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v14, &v16, 0x26u);
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (BOOL)_buildLinksWithDictFromDeserializedJson:(id)json
{
  if (!json)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVDataSource.m";
      v34 = 1024;
      v35 = 88;
      v36 = 2082;
      v37 = "[MapsSuggestionsDGVDataSource _buildLinksWithDictFromDeserializedJson:]";
      v38 = 2082;
      v39 = "nil == (dict)";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Dictionary deserialzied from JSON cannot be nil", buf, 0x26u);
    }

    v21 = 0;
    goto LABEL_34;
  }

  [json objectForKey:@"links"];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = v30 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v5)
  {
    v21 = 1;
    goto LABEL_33;
  }

  v7 = v5;
  v8 = 0;
  v26 = *v28;
  *&v6 = 136446978;
  v24 = v6;
  obj = v4;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v28 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v27 + 1) + 8 * i);
      v11 = [v10 objectForKey:{@"from", v24}];
      v12 = [v10 objectForKey:@"to"];
      v13 = v12;
      if (!v11)
      {
        v22 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = v24;
          v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVDataSource.m";
          v34 = 1024;
          v35 = 97;
          v36 = 2082;
          v37 = "[MapsSuggestionsDGVDataSource _buildLinksWithDictFromDeserializedJson:]";
          v38 = 2082;
          v39 = "nil == (unserializedFromDest)";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Unserialized dictionary must have from field", buf, 0x26u);
        }

        v11 = 0;
        goto LABEL_31;
      }

      if (!v12)
      {
        v13 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = v24;
          v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVDataSource.m";
          v34 = 1024;
          v35 = 98;
          v36 = 2082;
          v37 = "[MapsSuggestionsDGVDataSource _buildLinksWithDictFromDeserializedJson:]";
          v38 = 2082;
          v39 = "nil == (unserializedToDest)";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Unserialized dictionary must have to field", buf, 0x26u);
        }

LABEL_31:
        v4 = obj;

        v21 = 0;
        goto LABEL_33;
      }

      v14 = [(MapsSuggestionsDGVDataSource *)self _findAnnotationEquivalentToUnserializedJSON:v11];
      v15 = [(MapsSuggestionsDGVDataSource *)self _findAnnotationEquivalentToUnserializedJSON:v13];
      v16 = v15;
      if (v14)
      {
        if (v15)
        {
          v17 = [[MapsSuggestionsDGVLinkOverlay alloc] initWithFromAnnotation:v14 toAnnotation:v15 index:v8];
          [(NSMutableArray *)self->_linkOverlays addObject:v17];
          ++v8;
          v18 = 1;
          goto LABEL_18;
        }

        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(&v17->super.super.super.super, OS_LOG_TYPE_FAULT))
        {
          *buf = v24;
          v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVDataSource.m";
          v34 = 1024;
          v35 = 104;
          v36 = 2082;
          v37 = "[MapsSuggestionsDGVDataSource _buildLinksWithDictFromDeserializedJson:]";
          v38 = 2082;
          v39 = "nil == (toDest)";
          p_super = &v17->super.super.super.super;
          v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. The to annotation object must be created";
          goto LABEL_16;
        }
      }

      else
      {
        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(&v17->super.super.super.super, OS_LOG_TYPE_FAULT))
        {
          *buf = v24;
          v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVDataSource.m";
          v34 = 1024;
          v35 = 103;
          v36 = 2082;
          v37 = "[MapsSuggestionsDGVDataSource _buildLinksWithDictFromDeserializedJson:]";
          v38 = 2082;
          v39 = "nil == (fromDest)";
          p_super = &v17->super.super.super.super;
          v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. The from annotation object must be created";
LABEL_16:
          _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_FAULT, v20, buf, 0x26u);
        }
      }

      v18 = 0;
LABEL_18:

      if (!v18)
      {
        v21 = 0;
        v4 = obj;
        goto LABEL_33;
      }
    }

    v4 = obj;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    v21 = 1;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_33:

LABEL_34:
  return v21;
}

- (BOOL)_buildAnnotationsWithDictFromDeserializedJson:(id)json
{
  if (!json)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVDataSource.m";
      v23 = 1024;
      v24 = 68;
      v25 = 2082;
      v26 = "[MapsSuggestionsDGVDataSource _buildAnnotationsWithDictFromDeserializedJson:]";
      v27 = 2082;
      v28 = "nil == (dict)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Dictionary deserialzied from JSON cannot be nil", buf, 0x26u);
    }

    goto LABEL_17;
  }

  v4 = [json objectForKey:@"destinations"];
  if (!v4)
  {
    v5 = 0;
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [MapsSuggestionsDGVAnnotation alloc];
        v12 = [(MapsSuggestionsDGVAnnotation *)v11 initWithDictFromJSONDeserialization:v10, v16];
        v13 = v12;
        if (!v10)
        {

          v14 = 0;
          goto LABEL_15;
        }

        [(NSMutableArray *)self->_annotations addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_15:

LABEL_18:
  return v14;
}

- (id)_dictFromJSONString:(id)string
{
  v3 = [string dataUsingEncoding:4];
  v8 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:v3 options:1 error:&v8];
  v5 = v4;
  v6 = 0;
  if (!v8)
  {
    v6 = v4;
  }

  return v6;
}

- (MapsSuggestionsDGVDataSource)initWithJSONString:(id)string
{
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = MapsSuggestionsDGVDataSource;
  v5 = [(MapsSuggestionsDGVDataSource *)&v17 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    annotations = v5->_annotations;
    v5->_annotations = v6;

    v8 = objc_alloc_init(NSMutableArray);
    linkOverlays = v5->_linkOverlays;
    v5->_linkOverlays = v8;

    v10 = [(MapsSuggestionsDGVDataSource *)v5 _dictFromJSONString:stringCopy];
    if (!v10)
    {
LABEL_13:
      v13 = 0;
      goto LABEL_14;
    }

    v11 = [(MapsSuggestionsDGVDataSource *)v5 _buildAnnotationsWithDictFromDeserializedJson:v10];
    v12 = [(MapsSuggestionsDGVDataSource *)v5 _buildLinksWithDictFromDeserializedJson:v10];
    if (v11)
    {
      if (v12)
      {
        v13 = v5;
LABEL_14:

        goto LABEL_15;
      }

      v14 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }

      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVDataSource.m";
      v20 = 1024;
      v21 = 42;
      v22 = 2082;
      v23 = "[MapsSuggestionsDGVDataSource initWithJSONString:]";
      v24 = 2082;
      v25 = "linkBuildSuccess == NO";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Destination Graph must build links correctly";
    }

    else
    {
      v14 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
LABEL_12:

        goto LABEL_13;
      }

      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVDataSource.m";
      v20 = 1024;
      v21 = 41;
      v22 = 2082;
      v23 = "[MapsSuggestionsDGVDataSource initWithJSONString:]";
      v24 = 2082;
      v25 = "annotationBuildSuccess == NO";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Destination Graph must build annotations correctly";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v15, buf, 0x26u);
    goto LABEL_12;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

@end