@interface AVAnnotation
+ (id)annotationPropertyListToNonDataBindingsArray:(id)a3;
+ (void)initialize;
- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange;
- (AVAnnotation)initWithJSONData:(id)a3 representationBinaryDataBindings:(id)a4 error:(id *)a5;
- (AVAnnotation)initWithTimeRange:(id *)a3 normalizedBoundingBox:(CGRect)a4;
- (BOOL)isEqual:(id)a3;
- (CGRect)normalizedBoundingBox;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_setVersion:(id)a3;
- (void)dealloc;
- (void)getJSONData:(id *)a3 representationBinaryDataBindings:(id *)a4;
- (void)setTimeRange:(id *)a3;
@end

@implementation AVAnnotation

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (AVAnnotation)initWithTimeRange:(id *)a3 normalizedBoundingBox:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13.receiver = self;
  v13.super_class = AVAnnotation;
  v9 = [(AVAnnotation *)&v13 init];
  if (v9)
  {
    *(v9 + 1) = [@"AVAnnotationVersion_1" copy];
    *(v9 + 2) = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    v11 = *&a3->var0.var3;
    v10 = *&a3->var1.var1;
    *(v9 + 40) = *&a3->var0.var0;
    *(v9 + 56) = v11;
    *(v9 + 72) = v10;
    *(v9 + 11) = x;
    *(v9 + 12) = y;
    *(v9 + 13) = width;
    *(v9 + 14) = height;
    *(v9 + 15) = 0;
  }

  return v9;
}

- (AVAnnotation)initWithJSONData:(id)a3 representationBinaryDataBindings:(id)a4 error:(id *)a5
{
  v35[27] = *MEMORY[0x1E69E9840];
  v7 = [(AVAnnotation *)self init];
  v35[0] = 0;
  if (v7)
  {
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:v35];
    if (v8)
    {
      v9 = v8;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }

      v10 = [v9 objectForKey:@"AVAnnotationArchiveKeyVersion"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }

      v7->_version = [v10 copy];
      [v10 isEqualToString:@"AVAnnotationVersion_1"];
      v11 = [v9 objectForKey:@"AVAnnotationArchiveKeyIdentifier"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }

      v7->_identifier = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v11];
      v12 = [v9 objectForKey:@"AVAnnotationArchiveKeyAuthor"];
      if (v12)
      {
        v13 = v12;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_31;
        }

        v12 = [v13 copy];
      }

      v7->_author = v12;
      v14 = [v9 objectForKey:@"AVAnnotationArchiveKeyLastModifiedDate"];
      if (!v14)
      {
        goto LABEL_12;
      }

      v15 = v14;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [objc_msgSend(objc_alloc_init(MEMORY[0x1E696AC80]) dateFromString:{v15), "copy"}];
LABEL_12:
        v7->_lastModifiedDate = v14;
        v16 = [v9 objectForKey:@"AVAnnotationArchiveKeyTimeRange"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = a5;
          CMTimeRangeMakeFromDictionary(&v34, v16);
          v18 = *&v34.start.epoch;
          v17 = *&v34.duration.timescale;
          *&v7->_timeRange.start.value = *&v34.start.value;
          *&v7->_timeRange.start.epoch = v18;
          *&v7->_timeRange.duration.timescale = v17;
          v19 = *(MEMORY[0x1E695F050] + 16);
          *&v34.start.value = *MEMORY[0x1E695F050];
          *&v34.start.epoch = v19;
          v20 = [v9 objectForKey:@"AVAnnotationArchiveKeyNormalizedBoundingBox"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!CGRectMakeWithDictionaryRepresentation(v20, &v34))
            {
LABEL_27:
              a5 = v32;
              goto LABEL_28;
            }

            v21 = *&v34.start.epoch;
            v7->_normalizedBoundingBox.origin = *&v34.start.value;
            v7->_normalizedBoundingBox.size = v21;
            v22 = [v9 objectForKey:@"AVAnnotationArchiveKeyZOrder"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v7->_zOrder = [v22 integerValue];
              v23 = [v9 objectForKey:@"AVAnnotationArchiveKeyRepresentations"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v24 = [v23 count];
                if (v24 == [a4 count])
                {
                  v25 = [MEMORY[0x1E695DF70] array];
                  if (![v23 count])
                  {
LABEL_25:
                    v7->_representations = v25;
                    return v7;
                  }

                  v26 = 0;
                  while (1)
                  {
                    v27 = [v23 objectAtIndex:{v26, v32}];
                    v28 = [a4 objectAtIndex:v26];
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      break;
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      break;
                    }

                    v29 = [v28 objectForKey:@"data"];
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      goto LABEL_27;
                    }

                    v30 = [AVAnnotationRepresentation _annotationRepresentationWithPropertyList:v27 binaryData:v29];
                    if (!v30)
                    {
                      break;
                    }

                    [v25 addObject:v30];
                    if ([v23 count] <= ++v26)
                    {
                      goto LABEL_25;
                    }
                  }
                }
              }
            }
          }

          [AVAnnotation initWithJSONData:representationBinaryDataBindings:error:];
          goto LABEL_27;
        }
      }

LABEL_31:
      [AVAnnotation initWithJSONData:representationBinaryDataBindings:error:];
    }
  }

LABEL_28:

  v7 = 0;
  if (a5)
  {
    *a5 = v35[0];
  }

  return v7;
}

- (void)getJSONData:(id *)a3 representationBinaryDataBindings:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setObject:-[AVAnnotation _version](self forKey:{"_version"), @"AVAnnotationArchiveKeyVersion"}];
  [v6 setObject:-[NSUUID UUIDString](-[AVAnnotation identifier](self forKey:{"identifier"), "UUIDString"), @"AVAnnotationArchiveKeyIdentifier"}];
  v7 = [(AVAnnotation *)self author];
  if (v7)
  {
    [v6 setObject:v7 forKey:@"AVAnnotationArchiveKeyAuthor"];
  }

  v8 = [(AVAnnotation *)self lastModifiedDate];
  if (v8)
  {
    v9 = [objc_alloc_init(MEMORY[0x1E696AC80]) stringFromDate:v8];
    if (v9)
    {
      [v6 setObject:v9 forKey:@"AVAnnotationArchiveKeyLastModifiedDate"];
    }
  }

  if (self)
  {
    [(AVAnnotation *)self timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  [v6 setObject:CMTimeRangeCopyAsDictionary(&range forKey:{*MEMORY[0x1E695E480]), @"AVAnnotationArchiveKeyTimeRange"}];
  [(AVAnnotation *)self normalizedBoundingBox];
  [v6 setObject:CGRectCreateDictionaryRepresentation(v36) forKey:@"AVAnnotationArchiveKeyNormalizedBoundingBox"];
  v22 = v6;
  [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[AVAnnotation zOrder](self, "zOrder")), @"AVAnnotationArchiveKeyZOrder"}];
  v10 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [(AVAnnotation *)self representations];
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        range.start.value = 0;
        [v10 addObject:{objc_msgSend(v16, "_propertyListAndBinaryData:", &range)}];
        if (range.start.value)
        {
          v32[1] = @"identifier";
          v33[0] = range.start.value;
          v32[0] = @"data";
          v33[1] = [v16 identifier];
          v17 = MEMORY[0x1E695DF20];
          v18 = v33;
          v19 = v32;
        }

        else
        {
          v30[0] = @"data";
          v20 = [MEMORY[0x1E695DEF0] data];
          v30[1] = @"identifier";
          v31[0] = v20;
          v31[1] = [v16 identifier];
          v17 = MEMORY[0x1E695DF20];
          v18 = v31;
          v19 = v30;
        }

        [v5 addObject:{objc_msgSend(v17, "dictionaryWithObjects:forKeys:count:", v18, v19, 2)}];
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  [v22 setObject:v10 forKey:@"AVAnnotationArchiveKeyRepresentations"];
  v21 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v22 options:0 error:0];
  if (a3)
  {
    *a3 = v21;
  }

  if (a4)
  {
    *a4 = v5;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAnnotation;
  [(AVAnnotation *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = *&self->_timeRange.start.epoch;
  v18[0] = *&self->_timeRange.start.value;
  v18[1] = v5;
  v18[2] = *&self->_timeRange.duration.timescale;
  v6 = [v4 initWithTimeRange:v18 normalizedBoundingBox:{self->_normalizedBoundingBox.origin.x, self->_normalizedBoundingBox.origin.y, self->_normalizedBoundingBox.size.width, self->_normalizedBoundingBox.size.height}];
  if (v6)
  {
    [v6 setIdentifier:{-[AVAnnotation identifier](self, "identifier")}];
    [v6 setAuthor:{-[AVAnnotation author](self, "author")}];
    [v6 setLastModifiedDate:{-[AVAnnotation lastModifiedDate](self, "lastModifiedDate")}];
    [(AVAnnotation *)self timeRange];
    [v6 setTimeRange:v18];
    [v6 setZOrder:{-[AVAnnotation zOrder](self, "zOrder")}];
    v7 = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(AVAnnotation *)self representations];
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * v12++), "copy")}];
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v10);
    }

    [v6 setRepresentations:v7];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v34 = v8;
    v35 = v7;
    v36 = v6;
    v37 = v5;
    v38 = v3;
    v39 = v4;
    if (!a3)
    {
      goto LABEL_23;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_23;
    }

    if (-[NSString isEqualToString:](-[AVAnnotation _version](self, "_version"), "isEqualToString:", [a3 _version]))
    {
      v11 = -[NSUUID isEqual:](-[AVAnnotation identifier](self, "identifier"), "isEqual:", [a3 identifier]);
    }

    else
    {
      v11 = 0;
    }

    v13 = [(AVAnnotation *)self author];
    v14 = v13 == [a3 author];
    v15 = v14 & v11;
    if (!v14 && v11)
    {
      v15 = -[NSString isEqualToString:](-[AVAnnotation author](self, "author"), "isEqualToString:", [a3 author]);
    }

    v16 = [(AVAnnotation *)self lastModifiedDate];
    if (v16 == [a3 lastModifiedDate])
    {
      if (!v15)
      {
        goto LABEL_23;
      }
    }

    else if (!v15 || !-[NSDate isEqualToDate:](-[AVAnnotation lastModifiedDate](self, "lastModifiedDate"), "isEqualToDate:", [a3 lastModifiedDate]))
    {
      goto LABEL_23;
    }

    if (self)
    {
      [(AVAnnotation *)self timeRange];
    }

    else
    {
      memset(&range1, 0, sizeof(range1));
    }

    [a3 timeRange];
    v12 = CMTimeRangeEqual(&range1, &v32);
    if (v12)
    {
      [(AVAnnotation *)self normalizedBoundingBox];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [a3 normalizedBoundingBox];
      v41.origin.x = v25;
      v41.origin.y = v26;
      v41.size.width = v27;
      v41.size.height = v28;
      v40.origin.x = v18;
      v40.origin.y = v20;
      v40.size.width = v22;
      v40.size.height = v24;
      v12 = CGRectEqualToRect(v40, v41);
      if (v12)
      {
        v29 = [(AVAnnotation *)self zOrder];
        if (v29 == [a3 zOrder])
        {
          v30 = [MEMORY[0x1E695DFD8] setWithArray:{-[AVAnnotation representations](self, "representations")}];
          LOBYTE(v12) = [v30 isEqualToSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(a3, "representations"))}];
          return v12;
        }

LABEL_23:
        LOBYTE(v12) = 0;
      }
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)[(AVAnnotation *)self _version] hash];
  v4 = [(NSUUID *)[(AVAnnotation *)self identifier] hash];
  v5 = [(NSString *)[(AVAnnotation *)self author] hash];
  v6 = [(NSDate *)[(AVAnnotation *)self lastModifiedDate] hash];
  memset(v24, 0, sizeof(v24));
  v23 = 0u;
  if (self)
  {
    [(AVAnnotation *)self timeRange];
  }

  *&v22.value = v23;
  v22.epoch = *&v24[0];
  v7 = CMTimeHash(&v22);
  v22 = *(v24 + 8);
  v8 = CMTimeHash(&v22);
  v9 = MEMORY[0x1E696B098];
  [(AVAnnotation *)self normalizedBoundingBox];
  v10 = [objc_msgSend(v9 "valueWithRect:"hash"")];
  v18 = 0u;
  v19 = 0u;
  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v10 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{-[AVAnnotation zOrder](self, "zOrder")), "hash"}];
  v20 = 0u;
  v21 = 0u;
  v12 = [(AVAnnotation *)self representations];
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v11 ^= [*(*(&v18 + 1) + 8 * i) hash];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v14);
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p>", NSStringFromClass(v4), self];
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange
{
  v3 = *&self[1].var0.var1;
  *&retstr->var0.var0 = *&self->var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var0;
  return self;
}

- (void)setTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *&self->_timeRange.duration.timescale = *&a3->var1.var1;
  *&self->_timeRange.start.epoch = v4;
  *&self->_timeRange.start.value = v3;
}

- (CGRect)normalizedBoundingBox
{
  x = self->_normalizedBoundingBox.origin.x;
  y = self->_normalizedBoundingBox.origin.y;
  width = self->_normalizedBoundingBox.size.width;
  height = self->_normalizedBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_setVersion:(id)a3
{
  v4 = [a3 copy];

  self->_version = v4;
}

+ (id)annotationPropertyListToNonDataBindingsArray:(id)a3
{
  v19[17] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [a3 objectForKey:@"AVAnnotationArchiveKeyRepresentations"];
  objc_opt_class();
  obj = v5;
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = OUTLINED_FUNCTION_3_0(isKindOfClass, v7);
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(8 * v11) objectForKey:@"AVAnnotationArchiveKeyIdentifier"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];
        v18 = @"identifier";
        v19[0] = v13;
        v14 = [v4 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v19, &v18, 1)}];
        if (v9 == ++v11)
        {
          v9 = OUTLINED_FUNCTION_3_0(v14, v15);
          if (v9)
          {
            goto LABEL_4;
          }

          return v4;
        }
      }
    }
  }

  return v4;
}

- (uint64_t)initWithJSONData:representationBinaryDataBindings:error:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  *v2 = *MEMORY[0x1E696A278];
  *v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Annotation data contains invalid format"];
  v4 = OUTLINED_FUNCTION_2_4(MEMORY[0x1E695DF20], v3);
  result = OUTLINED_FUNCTION_1_5(v4);
  *v0 = result;
  return result;
}

@end